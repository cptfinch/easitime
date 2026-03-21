# Agent Operating Instructions

## Identity
You are a backend engineer working on the EasiTime community currency platform.

## Tonight's Task: Backend Scaffold

Create a working Node.js/Express backend scaffold from the existing specs in this repo.
Work on a feature branch called `feat/backend-scaffold`.

### Step 1: Initialize the Node.js Project
- Run `npm init -y` in the `backend/` directory
- Install core dependencies: express, pg (PostgreSQL client), dotenv, uuid, cors, helmet, morgan
- Install dev dependencies: jest, supertest, eslint, nodemon
- Set up `package.json` scripts: start, dev, test, lint
- Create a sensible `.env.example` (no real secrets)

### Step 2: Project Structure
Create the following structure under `backend/`:
```
backend/
├── src/
│   ├── index.js              # Express app entry point
│   ├── config/
│   │   └── index.js          # Config loader (from env vars)
│   ├── db/
│   │   ├── pool.js           # PostgreSQL connection pool
│   │   └── migrations/
│   │       └── 001_initial_schema.sql  # Copy from models/schema.sql, add indexes
│   ├── routes/
│   │   ├── index.js          # Route aggregator
│   │   ├── members.js        # CRUD for members
│   │   ├── communities.js    # CRUD for communities
│   │   ├── skills.js         # CRUD for skills + member_skills
│   │   ├── exchanges.js      # Exchange lifecycle (create, confirm, complete)
│   │   └── health.js         # Health check endpoint
│   ├── services/
│   │   ├── ledger.js         # Double-entry ledger (TIM + LETS)
│   │   └── matching.js       # Phase 1 rule-based matcher
│   ├── middleware/
│   │   ├── errorHandler.js   # Central error handling
│   │   └── validate.js       # Request validation
│   └── utils/
│       └── logger.js         # Structured logging
├── test/
│   ├── routes/
│   │   └── health.test.js    # Smoke test
│   ├── services/
│   │   ├── ledger.test.js    # Ledger unit tests
│   │   └── matching.test.js  # Matching unit tests
│   └── setup.js              # Jest setup
├── .env.example
├── .eslintrc.json
├── jest.config.js
└── README.md                 # Update with setup instructions
```

### Step 3: Implement Core Logic
1. **Express app** with helmet, cors, morgan, JSON body parser, error handler
2. **Health endpoint** returning `{ status: "ok", version: "0.1.0" }`
3. **Member routes** — basic CRUD (no auth yet, that comes later with Supabase)
4. **Community routes** — basic CRUD
5. **Skills routes** — CRUD for skills and member_skills (offers/needs)
6. **Exchange routes** — create, confirm (provider/receiver), complete, cancel
7. **Ledger service** — double-entry bookkeeping with balance tracking
8. **Matching service** — Phase 1 rule-based: filter by skill match + proximity, rank by distance

### Step 4: Tests
- Health endpoint smoke test
- Ledger service unit tests (credit, debit, balance, conservation invariant)
- Matching service unit tests (skill match, proximity ranking)
- Tests should work without a database (mock the db layer)

### Step 5: Git
- Commit your work incrementally on the `feat/backend-scaffold` branch
- Use conventional commit messages (feat:, fix:, test:, docs:)
- Final commit message should summarize what was built

## Constraints
- Do NOT set up Supabase or any external service — use plain pg with connection pool
- Do NOT implement auth — that will use Supabase Auth later
- Do NOT implement blockchain anchoring — that is Phase 2
- Do NOT install unnecessary dependencies — keep it minimal
- Write clean, well-structured code with JSDoc comments on exported functions
- Follow the existing schema.sql exactly — do not change table structures
- All amounts should use DECIMAL precision, never floating point

## When Done
Commit your work to the feat/backend-scaffold branch. Do NOT push to origin (no SSH key in sandbox). Report what was completed.
