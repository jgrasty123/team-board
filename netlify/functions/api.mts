import type { Config } from "@netlify/functions";
import { q, one } from "../lib/db.mts";
import {
  SESSION_COOKIE, type Person, consumeLoginToken, createLoginToken, createSession,
  deleteSession, personFromSession,
} from "../lib/auth.mts";
import { esc, layout, sendMail, siteUrl } from "../lib/mail.mts";

// ---------- helpers ----------

class HttpError extends Error {
  constructor(public status: number, message: string) { super(message); }
}

const json = (data: unknown, status = 200, headers: Record<string, string> = {}) =>
  new Response(JSON.stringify(data), {
    status,
    headers: { "content-type": "application/json; charset=utf-8", "cache-control": "no-store", ...headers },
  });

function getCookie(req: Request, name: string): string | undefined {
  const raw = req.headers.get("cookie") || "";
  for (const part of raw.split(";")) {
    const [k, ...v] = part.trim().split("=");
    if (k === name) return decodeURIComponent(v.join("="));
  }
  return undefined;
}

function sessionCookie(token: string, maxAge: number): string {
  return `${SESSION_COOKIE}=${token}; Path=/; HttpOnly; Secure; SameSite=Lax; Max-Age=${maxAge}`;
}

async function body(req: Request): Promise<any> {
  try { return await req.json(); } catch { return {}; }
}

function str(v: unknown, max: number, field: string, required = false): string | undefined {
  if (v === undefined || v === null) {
    if (required) throw new HttpError(400, `${field} is required`);
    return undefined;
  }
  const s = String(v).trim();
  if (required && !s) throw new HttpError(400, `${field} is required`);
  if (s.length > max) throw new HttpError(400, `${field} is too long`);
  return s;
}

function dateOrNull(v: unknown): string | null {
  if (v === null || v === "" || v === undefined) return null;
  const s = String(v);
  if (!/^\d{4}-\d{2}-\d{2}$/.test(s)) throw new HttpError(400, "Invalid date");
  return s;
}

const intOrNull = (v: unknown): number | null => (v === null || v === "" || v === undefined ? null : Number(v));

const TASK_COLS = `t.id, t.project_id, t.section_id, t.title, t.notes, t.assignee_id,
  to_char(t.due_on, 'YYYY-MM-DD') AS due_on, t.completed, t.completed_at, t.position,
  t.created_by, t.created_at, t.updated_at, t.asana_url`;

async function canAccessProject(me: Person, projectId: number): Promise<boolean> {
  if (me.role === "admin") {
    return Boolean(await one(`SELECT 1 FROM projects WHERE id = $1`, [projectId]));
  }
  return Boolean(await one(`SELECT 1 FROM project_members WHERE project_id = $1 AND person_id = $2`, [projectId, me.id]));
}

async function requireProject(me: Person, projectId: number) {
  if (!Number.isInteger(projectId) || !(await canAccessProject(me, projectId))) throw new HttpError(404, "Project not found");
}

async function requireTask(me: Person, taskId: number) {
  const task = await one(`SELECT ${TASK_COLS} FROM tasks t WHERE t.id = $1`, [taskId]);
  if (!task) throw new HttpError(404, "Task not found");
  await requireProject(me, task.project_id);
  return task;
}

const requireAdmin = (me: Person) => {
  if (me.role !== "admin") throw new HttpError(403, "Only admins can do that");
};

/** People who may be assigned / mentioned in a project. */
async function projectPeopleIds(projectId: number): Promise<Set<number>> {
  const rows = await q<{ id: number }>(
    `SELECT p.id FROM people p
      WHERE p.active AND (p.role = 'admin' OR EXISTS (SELECT 1 FROM project_members m WHERE m.project_id = $1 AND m.person_id = p.id))`,
    [projectId],
  );
  return new Set(rows.map((r) => r.id));
}

async function notify(personId: number, type: "mention" | "assign", taskId: number, actorId: number, commentId: number | null = null) {
  if (personId === actorId) return;
  await q(
    `INSERT INTO notifications (person_id, type, task_id, actor_id, comment_id) VALUES ($1, $2, $3, $4, $5)`,
    [personId, type, taskId, actorId, commentId],
  );
}

function mentionIds(text: string): number[] {
  const ids = new Set<number>();
  for (const m of text.matchAll(/@\[([^\]]{1,80})\]\((\d+)\)/g)) ids.add(Number(m[2]));
  return [...ids];
}

// ---------- auth routes (no session required) ----------

async function requestLink(req: Request) {
  const b = await body(req);
  const email = String(b.email || "").trim().toLowerCase();
  if (email) {
    const person = await one<{ id: number; name: string }>(
      `SELECT id, name FROM people WHERE lower(email) = $1 AND active`, [email]);
    if (person) {
      const recent = await one(
        `SELECT 1 FROM login_tokens WHERE person_id = $1 AND expires_at > NOW() + interval '29 minutes'`, [person.id]);
      if (!recent) {
        const token = await createLoginToken(person.id, 30);
        const link = `${siteUrl(new URL(req.url).origin)}/signin?token=${encodeURIComponent(token)}`;
        await sendMail({
          to: email,
          subject: "Your sign-in link for the team board",
          text: `Hi ${person.name},\n\nUse this link to sign in (it works once and expires in 30 minutes):\n${link}\n\nIf you didn't ask for this, you can ignore this email.`,
          html: layout("Sign in to the team board",
            `<p>Hi ${esc(person.name)},</p><p>Click below to sign in. The link works once and expires in 30 minutes.</p>
             <p><a href="${esc(link)}" style="display:inline-block;background:#2f5d50;color:#fff;text-decoration:none;padding:10px 18px;border-radius:7px;font-weight:600">Sign in</a></p>
             <p style="color:#7a746a">If you didn't ask for this, you can ignore this email.</p>`),
        });
      }
    }
  }
  // Same answer whether or not the email exists.
  return json({ ok: true });
}

async function verifyLink(req: Request) {
  const b = await body(req);
  const personId = b.token ? await consumeLoginToken(String(b.token)) : null;
  if (!personId) throw new HttpError(400, "This sign-in link has expired or was already used. Request a new one.");
  const person = await one(`SELECT id FROM people WHERE id = $1 AND active`, [personId]);
  if (!person) throw new HttpError(403, "This account is no longer active.");
  const { token, maxAge } = await createSession(personId);
  return json({ ok: true }, 200, { "set-cookie": sessionCookie(token, maxAge) });
}

// ---------- main router ----------

async function route(req: Request, me: Person, parts: string[]): Promise<Response> {
  const m = req.method;
  const [a, b, c] = parts; // e.g. ["tasks", "12", "comments"]
  const id = b !== undefined ? Number(b) : NaN;

  // --- session ---
  if (a === "me" && m === "GET") {
    const projects = me.role === "admin"
      ? await q(`SELECT p.id, p.name, p.color, p.archived,
                   (SELECT count(*)::int FROM tasks t WHERE t.project_id = p.id AND NOT t.completed) AS open_count
                   FROM projects p ORDER BY p.archived, lower(p.name)`)
      : await q(`SELECT p.id, p.name, p.color, p.archived,
                   (SELECT count(*)::int FROM tasks t WHERE t.project_id = p.id AND NOT t.completed) AS open_count
                   FROM projects p JOIN project_members pm ON pm.project_id = p.id AND pm.person_id = $1
                  ORDER BY p.archived, lower(p.name)`, [me.id]);
    const people = me.role === "admin"
      ? await q(`SELECT id, name, email, role, active FROM people ORDER BY lower(name)`)
      : await q(`SELECT DISTINCT p.id, p.name, p.role, p.active FROM people p
                  WHERE p.role = 'admin' OR p.id = $1 OR EXISTS (
                    SELECT 1 FROM project_members a JOIN project_members b2 ON a.project_id = b2.project_id
                     WHERE a.person_id = $1 AND b2.person_id = p.id)
                  ORDER BY p.name`, [me.id]);
    const unread = await one<{ n: number }>(
      `SELECT count(*)::int AS n FROM notifications WHERE person_id = $1 AND read_at IS NULL`, [me.id]);
    return json({ me, projects, people, unread: unread?.n ?? 0 });
  }

  if (a === "logout" && m === "POST") {
    await deleteSession(getCookie(req, SESSION_COOKIE));
    return json({ ok: true }, 200, { "set-cookie": sessionCookie("", 0) });
  }

  // --- projects ---
  if (a === "projects" && !b && m === "POST") {
    requireAdmin(me);
    const x = await body(req);
    const name = str(x.name, 200, "Name", true)!;
    const p = await one(`INSERT INTO projects (name, color) VALUES ($1, $2) RETURNING id`, [name, str(x.color, 30, "Color") || "none"]);
    await q(`INSERT INTO project_members (project_id, person_id) VALUES ($1, $2)`, [p.id, me.id]);
    for (const [i, s] of ["To do", "Doing", "Done"].entries()) {
      await q(`INSERT INTO sections (project_id, name, position) VALUES ($1, $2, $3)`, [p.id, s, i + 1]);
    }
    return json({ id: p.id }, 201);
  }

  if (a === "projects" && b && !c && m === "GET") {
    await requireProject(me, id);
    const project = await one(`SELECT id, name, color, notes, archived, asana_gid FROM projects WHERE id = $1`, [id]);
    const sections = await q(`SELECT id, name, position FROM sections WHERE project_id = $1 ORDER BY position, id`, [id]);
    const open = await q(`SELECT ${TASK_COLS} FROM tasks t WHERE t.project_id = $1 AND NOT t.completed ORDER BY t.position, t.id`, [id]);
    const done = await q(`SELECT ${TASK_COLS} FROM tasks t WHERE t.project_id = $1 AND t.completed ORDER BY t.completed_at DESC NULLS LAST LIMIT 200`, [id]);
    const members = await q(`SELECT person_id FROM project_members WHERE project_id = $1`, [id]);
    const counts = await q(`SELECT c.task_id, count(*)::int AS n FROM comments c JOIN tasks t ON t.id = c.task_id
                             WHERE t.project_id = $1 GROUP BY c.task_id`, [id]);
    return json({ project, sections, tasks: [...open, ...done], member_ids: members.map((r) => r.person_id), comment_counts: Object.fromEntries(counts.map((r) => [r.task_id, r.n])) });
  }

  if (a === "projects" && b && !c && m === "PATCH") {
    requireAdmin(me);
    await requireProject(me, id);
    const x = await body(req);
    if (x.name !== undefined) await q(`UPDATE projects SET name = $2 WHERE id = $1`, [id, str(x.name, 200, "Name", true)]);
    if (x.notes !== undefined) await q(`UPDATE projects SET notes = $2 WHERE id = $1`, [id, str(x.notes, 20000, "Notes") ?? ""]);
    if (x.color !== undefined) await q(`UPDATE projects SET color = $2 WHERE id = $1`, [id, str(x.color, 30, "Color") || "none"]);
    if (x.archived !== undefined) await q(`UPDATE projects SET archived = $2 WHERE id = $1`, [id, Boolean(x.archived)]);
    return json({ ok: true });
  }

  if (a === "projects" && b && c === "members" && m === "PUT") {
    requireAdmin(me);
    await requireProject(me, id);
    const x = await body(req);
    const ids: number[] = Array.isArray(x.person_ids) ? x.person_ids.map(Number).filter(Number.isInteger) : [];
    await q(`DELETE FROM project_members WHERE project_id = $1 AND NOT (person_id = ANY($2::int[]))`, [id, ids]);
    for (const pid of ids) {
      await q(`INSERT INTO project_members (project_id, person_id) SELECT $1, id FROM people WHERE id = $2 ON CONFLICT DO NOTHING`, [id, pid]);
    }
    return json({ ok: true });
  }

  if (a === "projects" && b && c === "sections" && m === "POST") {
    await requireProject(me, id);
    const x = await body(req);
    const name = str(x.name, 200, "Name", true)!;
    const pos = await one(`SELECT COALESCE(max(position), 0) + 1 AS p FROM sections WHERE project_id = $1`, [id]);
    const s = await one(`INSERT INTO sections (project_id, name, position) VALUES ($1, $2, $3) RETURNING id, name, position`, [id, name, pos.p]);
    return json(s, 201);
  }

  // --- sections ---
  if (a === "sections" && b && (m === "PATCH" || m === "DELETE")) {
    const sec = await one(`SELECT id, project_id FROM sections WHERE id = $1`, [id]);
    if (!sec) throw new HttpError(404, "Section not found");
    await requireProject(me, sec.project_id);
    if (m === "PATCH") {
      const x = await body(req);
      if (x.name !== undefined) await q(`UPDATE sections SET name = $2 WHERE id = $1`, [id, str(x.name, 200, "Name", true)]);
      if (x.position !== undefined && Number.isFinite(Number(x.position))) await q(`UPDATE sections SET position = $2 WHERE id = $1`, [id, Number(x.position)]);
      return json({ ok: true });
    }
    requireAdmin(me);
    const other = await one(`SELECT id FROM sections WHERE project_id = $1 AND id <> $2 ORDER BY position LIMIT 1`, [sec.project_id, id]);
    if (!other) throw new HttpError(400, "A project needs at least one section");
    await q(`UPDATE tasks SET section_id = $2 WHERE section_id = $1`, [id, other.id]);
    await q(`DELETE FROM sections WHERE id = $1`, [id]);
    return json({ ok: true });
  }

  // --- tasks ---
  if (a === "tasks" && !b && m === "POST") {
    const x = await body(req);
    const projectId = Number(x.project_id);
    await requireProject(me, projectId);
    const title = str(x.title, 500, "Title", true)!;
    let sectionId = intOrNull(x.section_id);
    if (sectionId !== null && !(await one(`SELECT 1 FROM sections WHERE id = $1 AND project_id = $2`, [sectionId, projectId]))) {
      throw new HttpError(400, "Invalid section");
    }
    if (sectionId === null) sectionId = (await one(`SELECT id FROM sections WHERE project_id = $1 ORDER BY position LIMIT 1`, [projectId]))?.id ?? null;
    const assignee = intOrNull(x.assignee_id);
    if (assignee !== null && !(await projectPeopleIds(projectId)).has(assignee)) throw new HttpError(400, "That person isn't on this project");
    const pos = await one(`SELECT COALESCE(max(position), 0) + 1 AS p FROM tasks WHERE project_id = $1 AND section_id IS NOT DISTINCT FROM $2`, [projectId, sectionId]);
    const t = await one(
      `INSERT INTO tasks (project_id, section_id, title, notes, assignee_id, due_on, position, created_by)
       VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING id`,
      [projectId, sectionId, title, str(x.notes, 20000, "Notes") ?? "", assignee, dateOrNull(x.due_on), pos.p, me.id],
    );
    if (assignee !== null) await notify(assignee, "assign", t.id, me.id);
    return json(await one(`SELECT ${TASK_COLS} FROM tasks t WHERE t.id = $1`, [t.id]), 201);
  }

  if (a === "tasks" && b && !c && m === "GET") {
    const task = await requireTask(me, id);
    const comments = await q(
      `SELECT c.id, c.author_id, c.body, c.created_at FROM comments c WHERE c.task_id = $1 ORDER BY c.created_at, c.id`, [id]);
    const project = await one(`SELECT id, name FROM projects WHERE id = $1`, [task.project_id]);
    return json({ task, comments, project });
  }

  if (a === "tasks" && b && !c && m === "PATCH") {
    const task = await requireTask(me, id);
    const x = await body(req);
    let projectId = task.project_id;
    if (x.project_id !== undefined && Number(x.project_id) !== task.project_id) {
      projectId = Number(x.project_id);
      await requireProject(me, projectId);
      const first = await one(`SELECT id FROM sections WHERE project_id = $1 ORDER BY position LIMIT 1`, [projectId]);
      await q(`UPDATE tasks SET project_id = $2, section_id = $3 WHERE id = $1`, [id, projectId, first?.id ?? null]);
    }
    if (x.title !== undefined) await q(`UPDATE tasks SET title = $2 WHERE id = $1`, [id, str(x.title, 500, "Title", true)]);
    if (x.notes !== undefined) await q(`UPDATE tasks SET notes = $2 WHERE id = $1`, [id, str(x.notes, 20000, "Notes") ?? ""]);
    if (x.due_on !== undefined) await q(`UPDATE tasks SET due_on = $2, reminded_due_on = NULL WHERE id = $1`, [id, dateOrNull(x.due_on)]);
    if (x.section_id !== undefined) {
      const sid = intOrNull(x.section_id);
      if (sid !== null && !(await one(`SELECT 1 FROM sections WHERE id = $1 AND project_id = $2`, [sid, projectId]))) throw new HttpError(400, "Invalid section");
      await q(`UPDATE tasks SET section_id = $2 WHERE id = $1`, [id, sid]);
    }
    if (x.position !== undefined && Number.isFinite(Number(x.position))) await q(`UPDATE tasks SET position = $2 WHERE id = $1`, [id, Number(x.position)]);
    if (x.completed !== undefined) {
      await q(`UPDATE tasks SET completed = $2, completed_at = CASE WHEN $2 THEN NOW() ELSE NULL END WHERE id = $1`, [id, Boolean(x.completed)]);
    }
    if (x.assignee_id !== undefined) {
      const assignee = intOrNull(x.assignee_id);
      if (assignee !== null && !(await projectPeopleIds(projectId)).has(assignee)) throw new HttpError(400, "That person isn't on this project");
      if (assignee !== task.assignee_id) {
        await q(`UPDATE tasks SET assignee_id = $2, reminded_due_on = NULL WHERE id = $1`, [id, assignee]);
        if (assignee !== null) await notify(assignee, "assign", id, me.id);
      }
    }
    await q(`UPDATE tasks SET updated_at = NOW() WHERE id = $1`, [id]);
    return json(await one(`SELECT ${TASK_COLS} FROM tasks t WHERE t.id = $1`, [id]));
  }

  if (a === "tasks" && b && !c && m === "DELETE") {
    const task = await requireTask(me, id);
    if (me.role !== "admin" && task.created_by !== me.id) throw new HttpError(403, "Only the person who created a task (or an admin) can delete it");
    await q(`DELETE FROM tasks WHERE id = $1`, [id]);
    return json({ ok: true });
  }

  if (a === "tasks" && b && c === "comments" && m === "POST") {
    const task = await requireTask(me, id);
    const x = await body(req);
    const text = str(x.body, 10000, "Comment", true)!;
    const cm = await one(`INSERT INTO comments (task_id, author_id, body) VALUES ($1, $2, $3) RETURNING id, author_id, body, created_at`, [id, me.id, text]);
    const allowed = await projectPeopleIds(task.project_id);
    for (const pid of mentionIds(text)) if (allowed.has(pid)) await notify(pid, "mention", id, me.id, cm.id);
    await q(`UPDATE tasks SET updated_at = NOW() WHERE id = $1`, [id]);
    return json(cm, 201);
  }

  // --- comments ---
  if (a === "comments" && b && m === "DELETE") {
    const cm = await one(`SELECT c.id, c.author_id, c.task_id FROM comments c WHERE c.id = $1`, [id]);
    if (!cm) throw new HttpError(404, "Comment not found");
    await requireTask(me, cm.task_id);
    if (me.role !== "admin" && cm.author_id !== me.id) throw new HttpError(403, "You can only delete your own comments");
    await q(`DELETE FROM comments WHERE id = $1`, [id]);
    return json({ ok: true });
  }

  // --- my tasks & inbox ---
  if (a === "my-tasks" && m === "GET") {
    const rows = await q(
      `SELECT ${TASK_COLS}, p.name AS project_name, s.name AS section_name
         FROM tasks t JOIN projects p ON p.id = t.project_id LEFT JOIN sections s ON s.id = t.section_id
        WHERE t.assignee_id = $1 AND NOT t.completed AND NOT p.archived
        ORDER BY t.due_on NULLS LAST, p.name, t.position`, [me.id]);
    return json({ tasks: rows });
  }

  if (a === "inbox" && !b && m === "GET") {
    const rows = await q(
      `SELECT n.id, n.type, n.task_id, n.actor_id, n.created_at, n.read_at,
              t.title AS task_title, t.project_id, p.name AS project_name, c.body AS comment_body
         FROM notifications n JOIN tasks t ON t.id = n.task_id JOIN projects p ON p.id = t.project_id
         LEFT JOIN comments c ON c.id = n.comment_id
        WHERE n.person_id = $1 ORDER BY n.created_at DESC LIMIT 100`, [me.id]);
    return json({ notifications: rows });
  }

  if (a === "inbox" && b === "read" && m === "POST") {
    const x = await body(req);
    if (Array.isArray(x.ids)) {
      await q(`UPDATE notifications SET read_at = NOW() WHERE person_id = $1 AND id = ANY($2::int[]) AND read_at IS NULL`, [me.id, x.ids.map(Number)]);
    } else {
      await q(`UPDATE notifications SET read_at = NOW() WHERE person_id = $1 AND read_at IS NULL`, [me.id]);
    }
    return json({ ok: true });
  }

  // --- people (admin) ---
  if (a === "people" && !b && m === "GET") {
    requireAdmin(me);
    const rows = await q(
      `SELECT p.id, p.name, p.email, p.role, p.active, p.invited_at, p.last_login_at,
              COALESCE(array_agg(pm.project_id) FILTER (WHERE pm.project_id IS NOT NULL), '{}') AS project_ids
         FROM people p LEFT JOIN project_members pm ON pm.person_id = p.id
        GROUP BY p.id ORDER BY p.active DESC, lower(p.name)`);
    return json({ people: rows });
  }

  if (a === "people" && !b && m === "POST") {
    requireAdmin(me);
    const x = await body(req);
    const email = str(x.email, 254, "Email", true)!.toLowerCase();
    if (!/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(email)) throw new HttpError(400, "That email doesn't look right");
    if (await one(`SELECT 1 FROM people WHERE lower(email) = $1`, [email])) throw new HttpError(409, "Someone with that email already exists");
    const role = x.role === "admin" ? "admin" : "member";
    const p = await one(`INSERT INTO people (name, email, role) VALUES ($1, $2, $3) RETURNING id`, [str(x.name, 200, "Name", true), email, role]);
    const projectIds: number[] = Array.isArray(x.project_ids) ? x.project_ids.map(Number).filter(Number.isInteger) : [];
    for (const pid of projectIds) await q(`INSERT INTO project_members (project_id, person_id) SELECT id, $2 FROM projects WHERE id = $1 ON CONFLICT DO NOTHING`, [pid, p.id]);
    return json({ id: p.id }, 201);
  }

  if (a === "people" && b && !c && m === "PATCH") {
    requireAdmin(me);
    const x = await body(req);
    if (x.name !== undefined) await q(`UPDATE people SET name = $2 WHERE id = $1`, [id, str(x.name, 200, "Name", true)]);
    if (x.email !== undefined) {
      const email = str(x.email, 254, "Email", true)!.toLowerCase();
      if (await one(`SELECT 1 FROM people WHERE lower(email) = $1 AND id <> $2`, [email, id])) throw new HttpError(409, "Someone with that email already exists");
      await q(`UPDATE people SET email = $2 WHERE id = $1`, [id, email]);
    }
    if (x.role !== undefined) {
      if (id === me.id && x.role !== "admin") throw new HttpError(400, "You can't remove your own admin role");
      await q(`UPDATE people SET role = $2 WHERE id = $1`, [id, x.role === "admin" ? "admin" : "member"]);
    }
    if (x.active !== undefined) {
      if (id === me.id && !x.active) throw new HttpError(400, "You can't deactivate yourself");
      await q(`UPDATE people SET active = $2 WHERE id = $1`, [id, Boolean(x.active)]);
      if (!x.active) await q(`DELETE FROM sessions WHERE person_id = $1`, [id]);
    }
    if (Array.isArray(x.project_ids)) {
      const ids = x.project_ids.map(Number).filter(Number.isInteger);
      await q(`DELETE FROM project_members WHERE person_id = $1 AND NOT (project_id = ANY($2::int[]))`, [id, ids]);
      for (const pid of ids) await q(`INSERT INTO project_members (project_id, person_id) SELECT id, $2 FROM projects WHERE id = $1 ON CONFLICT DO NOTHING`, [pid, id]);
    }
    return json({ ok: true });
  }

  if (a === "people" && b && c === "invite" && m === "POST") {
    requireAdmin(me);
    const p = await one(`SELECT id, name, email, active FROM people WHERE id = $1`, [id]);
    if (!p || !p.active) throw new HttpError(404, "Person not found");
    const token = await createLoginToken(p.id, 7 * 24 * 60);
    const base = siteUrl(new URL(req.url).origin);
    const link = `${base}/signin?token=${encodeURIComponent(token)}`;
    const projects = await q(`SELECT pr.name FROM projects pr JOIN project_members pm ON pm.project_id = pr.id
                               WHERE pm.person_id = $1 AND NOT pr.archived ORDER BY pr.name`, [p.id]);
    const list = projects.length ? `<p>You're on: ${projects.map((r) => esc(r.name)).join(", ")}.</p>` : "";
    await sendMail({
      to: p.email,
      subject: `${me.name} invited you to the team board`,
      text: `Hi ${p.name},\n\n${me.name} invited you to the team board where we track tasks and projects.\n\nSign in here (link works once, for 7 days):\n${link}\n\nAfter that, you can always sign in at ${base} with this email address.`,
      html: layout(`${me.name} invited you to the team board`,
        `<p>Hi ${esc(p.name)},</p><p>${esc(me.name)} invited you to the team board where we track tasks and projects.</p>${list}
         <p><a href="${esc(link)}" style="display:inline-block;background:#2f5d50;color:#fff;text-decoration:none;padding:10px 18px;border-radius:7px;font-weight:600">Open the board</a></p>
         <p style="color:#7a746a">This link works once and lasts 7 days. After that, sign in any time at <a href="${esc(base)}">${esc(base)}</a> with this email address — no password needed.</p>`),
    });
    await q(`UPDATE people SET invited_at = NOW() WHERE id = $1`, [p.id]);
    return json({ ok: true });
  }

  throw new HttpError(404, "Not found");
}

export default async (req: Request) => {
  try {
    const url = new URL(req.url);
    const parts = url.pathname.replace(/^\/api\/?/, "").split("/").filter(Boolean);

    // Simple CSRF guard: writes must carry our custom header (browsers can't add it cross-site without CORS).
    if (req.method !== "GET" && req.headers.get("x-tb") !== "1") throw new HttpError(403, "Bad request");

    if (parts[0] === "auth" && parts[1] === "request" && req.method === "POST") return await requestLink(req);
    if (parts[0] === "auth" && parts[1] === "verify" && req.method === "POST") return await verifyLink(req);

    const me = await personFromSession(getCookie(req, SESSION_COOKIE));
    if (!me) return json({ error: "Not signed in" }, 401);
    return await route(req, me, parts);
  } catch (err: any) {
    if (err instanceof HttpError) return json({ error: err.message }, err.status);
    console.error(err);
    return json({ error: err?.message?.startsWith("Email is not set up") ? err.message : "Something went wrong" }, 500);
  }
};

export const config: Config = { path: "/api/*" };
