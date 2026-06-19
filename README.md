# Smart Dock Scheduling System — No-Docker Edition

Zero external dependencies. Uses SQLite (built into Python) as the database.

---

## Prerequisites

| Tool | Minimum version | Download |
|------|----------------|---------|
| Python | 3.9+ | https://python.org |
| Node.js | 16+ | https://nodejs.org |

That's it. No Docker, no Postgres, no Redis.

---

## How to run (Windows)

Open **Terminal 1**:
```
start.bat
```

Open **Terminal 2**:
```
start-frontend.bat
```

---

## How to run (Mac / Linux)

Open **Terminal 1**:
```bash
bash start.sh
```

Open **Terminal 2**:
```bash
bash start-frontend.sh
```

---

## URLs

| URL | What it is |
|-----|-----------|
| http://localhost:3000 | The full web app |
| http://localhost:8000/docs | Interactive API docs (Swagger) |
| http://localhost:8000/health | Backend health check |

---

## Database

The SQLite database file is created automatically at:
```
backend/app/dock.db
```

On first startup, 5 carriers and 10 dock doors are seeded automatically.
To **reset** the database, just delete `dock.db` and restart the backend.

---

## Stopping

Press `Ctrl+C` in each terminal.
