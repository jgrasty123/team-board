-- Team board schema

CREATE TABLE people (
  id            SERIAL PRIMARY KEY,
  name          TEXT NOT NULL,
  email         TEXT NOT NULL UNIQUE,
  role          TEXT NOT NULL DEFAULT 'member' CHECK (role IN ('admin', 'member')),
  active        BOOLEAN NOT NULL DEFAULT TRUE,
  invited_at    TIMESTAMPTZ,
  last_login_at TIMESTAMPTZ,
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE projects (
  id          SERIAL PRIMARY KEY,
  name        TEXT NOT NULL,
  color       TEXT NOT NULL DEFAULT 'none',
  notes       TEXT NOT NULL DEFAULT '',
  archived    BOOLEAN NOT NULL DEFAULT FALSE,
  asana_gid   TEXT,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE project_members (
  project_id INTEGER NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
  person_id  INTEGER NOT NULL REFERENCES people(id) ON DELETE CASCADE,
  PRIMARY KEY (project_id, person_id)
);

CREATE TABLE sections (
  id          SERIAL PRIMARY KEY,
  project_id  INTEGER NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
  name        TEXT NOT NULL,
  position    DOUBLE PRECISION NOT NULL DEFAULT 0
);
CREATE INDEX sections_project_idx ON sections(project_id);

CREATE TABLE tasks (
  id               SERIAL PRIMARY KEY,
  project_id       INTEGER NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
  section_id       INTEGER REFERENCES sections(id) ON DELETE SET NULL,
  title            TEXT NOT NULL,
  notes            TEXT NOT NULL DEFAULT '',
  assignee_id      INTEGER REFERENCES people(id) ON DELETE SET NULL,
  due_on           DATE,
  completed        BOOLEAN NOT NULL DEFAULT FALSE,
  completed_at     TIMESTAMPTZ,
  position         DOUBLE PRECISION NOT NULL DEFAULT 0,
  created_by       INTEGER REFERENCES people(id) ON DELETE SET NULL,
  created_at       TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at       TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  asana_url        TEXT,
  reminded_due_on  DATE
);
CREATE INDEX tasks_project_idx ON tasks(project_id);
CREATE INDEX tasks_assignee_idx ON tasks(assignee_id) WHERE NOT completed;
CREATE INDEX tasks_due_idx ON tasks(due_on) WHERE NOT completed;

CREATE TABLE comments (
  id          SERIAL PRIMARY KEY,
  task_id     INTEGER NOT NULL REFERENCES tasks(id) ON DELETE CASCADE,
  author_id   INTEGER REFERENCES people(id) ON DELETE SET NULL,
  body        TEXT NOT NULL,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX comments_task_idx ON comments(task_id);

CREATE TABLE notifications (
  id          SERIAL PRIMARY KEY,
  person_id   INTEGER NOT NULL REFERENCES people(id) ON DELETE CASCADE,
  type        TEXT NOT NULL CHECK (type IN ('mention', 'assign')),
  task_id     INTEGER NOT NULL REFERENCES tasks(id) ON DELETE CASCADE,
  actor_id    INTEGER REFERENCES people(id) ON DELETE SET NULL,
  comment_id  INTEGER REFERENCES comments(id) ON DELETE CASCADE,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  read_at     TIMESTAMPTZ,
  emailed_at  TIMESTAMPTZ
);
CREATE INDEX notifications_person_idx ON notifications(person_id, created_at DESC);
CREATE INDEX notifications_unsent_idx ON notifications(created_at) WHERE emailed_at IS NULL;

CREATE TABLE login_tokens (
  token_hash  TEXT PRIMARY KEY,
  person_id   INTEGER NOT NULL REFERENCES people(id) ON DELETE CASCADE,
  expires_at  TIMESTAMPTZ NOT NULL,
  used_at     TIMESTAMPTZ
);

CREATE TABLE sessions (
  token_hash  TEXT PRIMARY KEY,
  person_id   INTEGER NOT NULL REFERENCES people(id) ON DELETE CASCADE,
  expires_at  TIMESTAMPTZ NOT NULL,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
