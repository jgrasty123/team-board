import { getDatabase } from "@netlify/database";

type Db = ReturnType<typeof getDatabase>;
let _db: Db | null = null;

function db(): Db {
  if (!_db) {
    // TEST_DB_URL is only used by the local test harness.
    const testUrl = process.env.TEST_DB_URL;
    _db = testUrl ? getDatabase({ connectionString: testUrl }) : getDatabase();
  }
  return _db;
}

export async function q<T = any>(text: string, params: unknown[] = []): Promise<T[]> {
  const res = await (db().pool as any).query(text, params);
  return res.rows as T[];
}

export async function one<T = any>(text: string, params: unknown[] = []): Promise<T | null> {
  const rows = await q<T>(text, params);
  return rows[0] ?? null;
}
