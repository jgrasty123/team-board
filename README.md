# Team Board

A small task board for Go-To Gifting and the contractors who work with us. It replaces Asana for what we actually used: projects, tasks, assignees, due dates, and comments.

## What it does

- **Projects** with board (columns) and list views. Drag cards between columns.
- **Tasks** with assignee, due date, description, and comments.
- **@mentions** in comments. Type `@` and pick a person.
- **Email notifications**, sent from Gmail a few times a day (about 8am, 12pm and 4pm Pacific). Each person gets one email listing:
  - tasks newly assigned to them
  - comments that @mention them
  - their open tasks due tomorrow
- **Sign-in by email link.** No passwords. Only people added on the People page can sign in.
- **Per-project access.** Members only see the projects they're added to. Admins see everything.

Nobody gets any email from the board until an admin clicks **Send invite** for them on the People page.

## How it's built

- `public/`: the single-page front end (plain HTML/CSS/JS, no build step)
- `netlify/functions/api.mts`: the JSON API at `/api/*`
- `netlify/functions/digest.mts`: the scheduled email digest (cron `0 15,19,23 * * *` UTC)
- `netlify/database/migrations/`: Postgres schema plus the one-time Asana import. Netlify applies these automatically on deploy.

Changes to the schema go in a **new** migration file. Never edit or delete one that has already been applied.

## Settings (Netlify environment variables)

| Variable | What it is |
|---|---|
| `GMAIL_USER` | The Gmail address emails are sent from |
| `GMAIL_APP_PASSWORD` | A Google app password for that account (mark as secret) |
| `MAIL_FROM_NAME` | Optional sender name, default "Team Board" |
| `SITE_URL` | Optional. The board's public URL, if you add a custom domain |

## Notes on the Asana import

- Open tasks from 28 active projects were imported (956 tasks), with their sections, assignees, and due dates.
- Each imported task links back to the original Asana task, which has its comment history.
- Completed tasks and subtasks were not imported.
- Two passwords found in task descriptions were removed during import.
