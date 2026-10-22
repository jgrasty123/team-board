import nodemailer from "nodemailer";

function env(key: string): string | undefined {
  // Netlify.env exists in the Netlify runtime; fall back to process.env for local tests.
  const g = globalThis as any;
  return g.Netlify?.env?.get?.(key) ?? process.env[key];
}

let transport: nodemailer.Transporter | null = null;

export function mailConfigured(): boolean {
  return Boolean(env("GMAIL_USER") && env("GMAIL_APP_PASSWORD"));
}

export async function sendMail(opts: { to: string; subject: string; html: string; text: string }) {
  if (env("MAIL_LOG_ONLY") === "1") {
    console.log("[mail:log-only]", opts.to, opts.subject, "\n" + opts.text);
    return;
  }
  const user = env("GMAIL_USER");
  const pass = env("GMAIL_APP_PASSWORD");
  if (!user || !pass) throw new Error("Email is not set up yet (GMAIL_USER / GMAIL_APP_PASSWORD missing).");
  if (!transport) {
    transport = nodemailer.createTransport({ service: "gmail", auth: { user, pass } });
  }
  const fromName = env("MAIL_FROM_NAME") || "Team Board";
  try {
    await transport.sendMail({ from: `"${fromName}" <${user}>`, ...opts });
  } catch (err: any) {
    // Surface Gmail's reason (never includes the password) so setup problems are diagnosable.
    console.error("sendMail failed:", err?.code, err?.responseCode, err?.response || err?.message);
    transport = null;
    if (err?.code === "EAUTH") {
      throw new Error(`Email is not set up correctly: Gmail rejected the sign-in for ${user}. Check that the app password was created while signed in to that exact account.`);
    }
    throw new Error(`Email couldn't be sent (${err?.code || "error"}: ${String(err?.response || err?.message || "").split("\n")[0].slice(0, 160)})`);
  }
}

export function siteUrl(fallback?: string): string {
  return (env("SITE_URL") || env("URL") || fallback || "").replace(/\/$/, "");
}

export function esc(s: unknown): string {
  return String(s ?? "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;");
}

/** Wrap body HTML in a simple, email-client-safe layout. */
export function layout(title: string, bodyHtml: string, footer = ""): string {
  return `<!doctype html><html><body style="margin:0;background:#f4f2ee;font-family:-apple-system,Segoe UI,Helvetica,Arial,sans-serif;color:#1f1d1a">
<table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="background:#f4f2ee;padding:24px 12px"><tr><td align="center">
<table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="max-width:560px;background:#ffffff;border-radius:10px;border:1px solid #e4e0d8">
<tr><td style="padding:22px 24px 8px;font-size:17px;font-weight:600">${esc(title)}</td></tr>
<tr><td style="padding:4px 24px 22px;font-size:14px;line-height:1.55">${bodyHtml}</td></tr>
</table>
<div style="max-width:560px;font-size:12px;color:#7a746a;padding:12px 4px">${footer}</div>
</td></tr></table></body></html>`;
}

/** Turn stored mention tokens "@[Name](12)" into readable "@Name". */
export function plainMentions(body: string): string {
  return body.replace(/@\[([^\]]{1,80})\]\(\d+\)/g, "@$1");
}
