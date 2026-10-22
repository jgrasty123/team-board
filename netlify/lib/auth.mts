import { createHash, randomBytes } from "node:crypto";
import { one, q } from "./db.mts";

export const SESSION_COOKIE = "tb_session";
const SESSION_DAYS = 30;

export type Person = { id: number; name: string; email: string; role: "admin" | "member"; active: boolean };

export function hashToken(token: string): string {
  return createHash("sha256").update(token).digest("hex");
}

export function newToken(): string {
  return randomBytes(32).toString("base64url");
}

/** Create a single-use sign-in token for a person. Returns the raw token. */
export async function createLoginToken(personId: number, minutes: number): Promise<string> {
  const token = newToken();
  await q(
    `INSERT INTO login_tokens (token_hash, person_id, expires_at) VALUES ($1, $2, NOW() + ($3 || ' minutes')::interval)`,
    [hashToken(token), personId, String(minutes)],
  );
  return token;
}

/** Consume a sign-in token; returns the person id or null. */
export async function consumeLoginToken(token: string): Promise<number | null> {
  const row = await one<{ person_id: number }>(
    `UPDATE login_tokens SET used_at = NOW()
       WHERE token_hash = $1 AND used_at IS NULL AND expires_at > NOW()
       RETURNING person_id`,
    [hashToken(token)],
  );
  return row?.person_id ?? null;
}

export async function createSession(personId: number): Promise<{ token: string; maxAge: number }> {
  const token = newToken();
  await q(
    `INSERT INTO sessions (token_hash, person_id, expires_at) VALUES ($1, $2, NOW() + ($3 || ' days')::interval)`,
    [hashToken(token), personId, String(SESSION_DAYS)],
  );
  await q(`UPDATE people SET last_login_at = NOW() WHERE id = $1`, [personId]);
  return { token, maxAge: SESSION_DAYS * 24 * 3600 };
}

export async function personFromSession(token: string | undefined): Promise<Person | null> {
  if (!token) return null;
  return one<Person>(
    `SELECT p.id, p.name, p.email, p.role, p.active
       FROM sessions s JOIN people p ON p.id = s.person_id
      WHERE s.token_hash = $1 AND s.expires_at > NOW() AND p.active`,
    [hashToken(token)],
  );
}

export async function deleteSession(token: string | undefined) {
  if (token) await q(`DELETE FROM sessions WHERE token_hash = $1`, [hashToken(token)]);
}
