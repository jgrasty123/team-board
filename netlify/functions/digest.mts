import type { Config } from "@netlify/functions";
import { q } from "../lib/db.mts";
import { esc, layout, mailConfigured, plainMentions, sendMail, siteUrl } from "../lib/mail.mts";

/**
 * Runs a few times a day. For each person it sends ONE email with:
 *  - new @mentions and task assignments since the last run
 *  - reminders for their open tasks due tomorrow (Pacific time)
 * People who haven't been invited (and never signed in) are skipped, and their
 * pending notifications are marked handled so they don't get a backlog later.
 */
export async function runDigest(baseUrl: string) {
  if (!mailConfigured() && process.env.MAIL_LOG_ONLY !== "1") {
    console.log("digest: email not configured, skipping");
    return { sent: 0, skipped: "email not configured" };
  }

  // Notifications for people who were never invited: mark handled, don't email.
  await q(`UPDATE notifications n SET emailed_at = NOW()
             FROM people p
            WHERE p.id = n.person_id AND n.emailed_at IS NULL
              AND (NOT p.active OR (p.role <> 'admin' AND p.invited_at IS NULL AND p.last_login_at IS NULL))`);

  const notes = await q(
    `SELECT n.id, n.person_id, n.type, n.task_id, n.created_at, a.name AS actor_name,
            t.title, p.name AS project_name, c.body AS comment_body
       FROM notifications n
       JOIN tasks t ON t.id = n.task_id JOIN projects p ON p.id = t.project_id
       LEFT JOIN people a ON a.id = n.actor_id LEFT JOIN comments c ON c.id = n.comment_id
      WHERE n.emailed_at IS NULL ORDER BY n.created_at`);

  const due = await q(
    `SELECT t.id, t.title, t.assignee_id AS person_id, to_char(t.due_on, 'YYYY-MM-DD') AS due_on, p.name AS project_name
       FROM tasks t JOIN projects p ON p.id = t.project_id JOIN people u ON u.id = t.assignee_id
      WHERE NOT t.completed AND NOT p.archived AND u.active
        AND (u.role = 'admin' OR u.invited_at IS NOT NULL OR u.last_login_at IS NOT NULL)
        AND t.due_on = ((NOW() AT TIME ZONE 'America/Los_Angeles')::date + 1)
        AND t.reminded_due_on IS DISTINCT FROM t.due_on`);

  const byPerson = new Map<number, { notes: any[]; due: any[] }>();
  const bucket = (id: number) => {
    if (!byPerson.has(id)) byPerson.set(id, { notes: [], due: [] });
    return byPerson.get(id)!;
  };
  for (const n of notes) bucket(n.person_id).notes.push(n);
  for (const d of due) bucket(d.person_id).due.push(d);
  if (!byPerson.size) return { sent: 0 };

  const people = await q(`SELECT id, name, email FROM people WHERE id = ANY($1::int[])`, [[...byPerson.keys()]]);
  let sent = 0;
  for (const person of people) {
    const { notes: pn, due: pd } = byPerson.get(person.id)!;
    const taskLink = (id: number) => `${baseUrl}/#/task/${id}`;

    const mentionItems = pn.filter((n) => n.type === "mention");
    const assignItems = pn.filter((n) => n.type === "assign");
    const htmlParts: string[] = [];
    const textParts: string[] = [];

    if (assignItems.length) {
      htmlParts.push(`<p style="margin:16px 0 6px;font-weight:600">Assigned to you</p>` + assignItems.map((n) =>
        `<div style="padding:8px 0;border-top:1px solid #eee"><a href="${esc(taskLink(n.task_id))}" style="color:#2f5d50;font-weight:600;text-decoration:none">${esc(n.title)}</a>
         <div style="color:#7a746a;font-size:13px">${esc(n.project_name)} · assigned by ${esc(n.actor_name || "someone")}</div></div>`).join(""));
      textParts.push("ASSIGNED TO YOU\n" + assignItems.map((n) => `- ${n.title} (${n.project_name}, by ${n.actor_name || "someone"})\n  ${taskLink(n.task_id)}`).join("\n"));
    }
    if (mentionItems.length) {
      htmlParts.push(`<p style="margin:16px 0 6px;font-weight:600">You were mentioned</p>` + mentionItems.map((n) => {
        const body = plainMentions(n.comment_body || "");
        const short = body.length > 280 ? body.slice(0, 280) + "…" : body;
        return `<div style="padding:8px 0;border-top:1px solid #eee"><a href="${esc(taskLink(n.task_id))}" style="color:#2f5d50;font-weight:600;text-decoration:none">${esc(n.title)}</a>
          <div style="color:#7a746a;font-size:13px">${esc(n.project_name)} · ${esc(n.actor_name || "someone")} wrote:</div>
          <div style="margin-top:4px;padding:8px 10px;background:#f6f4f0;border-radius:6px;white-space:pre-wrap">${esc(short)}</div></div>`;
      }).join(""));
      textParts.push("YOU WERE MENTIONED\n" + mentionItems.map((n) => `- ${n.title} (${n.project_name}) — ${n.actor_name || "someone"}: ${plainMentions(n.comment_body || "").slice(0, 280)}\n  ${taskLink(n.task_id)}`).join("\n"));
    }
    if (pd.length) {
      htmlParts.push(`<p style="margin:16px 0 6px;font-weight:600">Due tomorrow</p>` + pd.map((d) =>
        `<div style="padding:8px 0;border-top:1px solid #eee"><a href="${esc(taskLink(d.id))}" style="color:#2f5d50;font-weight:600;text-decoration:none">${esc(d.title)}</a>
         <div style="color:#7a746a;font-size:13px">${esc(d.project_name)}</div></div>`).join(""));
      textParts.push("DUE TOMORROW\n" + pd.map((d) => `- ${d.title} (${d.project_name})\n  ${taskLink(d.id)}`).join("\n"));
    }

    const counts: string[] = [];
    if (assignItems.length) counts.push(`${assignItems.length} new assignment${assignItems.length > 1 ? "s" : ""}`);
    if (mentionItems.length) counts.push(`${mentionItems.length} mention${mentionItems.length > 1 ? "s" : ""}`);
    if (pd.length) counts.push(`${pd.length} due tomorrow`);
    const subject = `Team board: ${counts.join(", ")}`;

    try {
      await sendMail({
        to: person.email,
        subject,
        text: `Hi ${person.name},\n\n${textParts.join("\n\n")}\n\nOpen the board: ${baseUrl}`,
        html: layout(`Hi ${person.name}`, htmlParts.join(""), `<a href="${esc(baseUrl)}" style="color:#7a746a">Open the team board</a>`),
      });
      sent++;
      if (pn.length) await q(`UPDATE notifications SET emailed_at = NOW() WHERE id = ANY($1::int[])`, [pn.map((n) => n.id)]);
      if (pd.length) await q(`UPDATE tasks SET reminded_due_on = due_on WHERE id = ANY($1::int[])`, [pd.map((d) => d.id)]);
    } catch (err) {
      console.error(`digest: failed to email person ${person.id}`, err);
    }
  }
  return { sent };
}

export default async (_req: Request, context: any) => {
  const result = await runDigest(siteUrl(context?.site?.url));
  console.log("digest:", JSON.stringify(result));
};

// 15:00, 19:00, 23:00 UTC = 8am, 12pm, 4pm Pacific while on daylight time
// (7am, 11am, 3pm Pacific in winter).
export const config: Config = { schedule: "0 15,19,23 * * *" };
