# Backend API

## Overview
REST/GraphQL API powering the EasiTime platform. Handles auth, matching, exchange processing, community management, social prescribing integration, and notifications.

## Tech Stack
- **Runtime**: Node.js or Python (TBD)
- **Database**: PostgreSQL via Supabase
- **Auth**: Supabase Auth (email, magic links, social login)
- **Notifications**: Push (FCM/APNs), email (Resend), SMS (Twilio)

## Directory Structure
```
backend/
├── src/
│   ├── api/           # Route handlers / endpoints
│   ├── models/        # Database schema / ORM models
│   ├── services/      # Business logic
│   ├── matching/      # AI matching engine
│   └── ledger/        # Credit/debit ledger engine
├── migrations/        # Database migrations
└── test/              # Tests
```

## TODO
- [ ] Initialise project (package.json or pyproject.toml)
- [ ] Set up Supabase project
- [ ] Design and implement database schema
- [ ] Implement API endpoints
- [ ] Build matching engine
- [ ] Build ledger engine
- [ ] Add social prescribing module
- [ ] Add notification service
- [ ] Write tests
