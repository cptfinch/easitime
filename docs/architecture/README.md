# System Architecture

## High-Level Architecture

```
┌─────────────────────────────────────────────────────┐
│                    Mobile App                        │
│              (React Native / Flutter)                │
│  ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────────┐  │
│  │ Feed │ │Search│ │Wallet│ │Chat  │ │  Profile  │  │
│  └──────┘ └──────┘ └──────┘ └──────┘ └──────────┘  │
└─────────────────────┬───────────────────────────────┘
                      │ REST / GraphQL
┌─────────────────────┴───────────────────────────────┐
│                   Backend API                        │
│                  (Node.js / Python)                   │
│  ┌──────────┐ ┌──────────┐ ┌──────────────────────┐ │
│  │  Auth    │ │ Matching │ │  Exchange Engine      │ │
│  │ (Supa)  │ │  (AI)    │ │  (credit/debit)       │ │
│  └──────────┘ └──────────┘ └──────────────────────┘ │
│  ┌──────────┐ ┌──────────┐ ┌──────────────────────┐ │
│  │Community │ │ Social   │ │  Notifications        │ │
│  │ Mgmt    │ │ Prescrib │ │  (push, email, SMS)   │ │
│  └──────────┘ └──────────┘ └──────────────────────┘ │
└────────┬────────────────────────────┬───────────────┘
         │                            │
┌────────┴────────┐          ┌────────┴───────────────┐
│    Database     │          │   Blockchain Layer      │
│  (Supabase/     │          │   (optional)            │
│   PostgreSQL)   │          │                         │
│                 │          │  ┌─────────────────┐    │
│  - Members      │          │  │  TIM Token      │    │
│  - Communities   │          │  │  Smart Contract │    │
│  - Services     │          │  └─────────────────┘    │
│  - Exchanges    │          │  ┌─────────────────┐    │
│  - LETS ledger  │          │  │  Mutual Credit  │    │
│  - Referrals    │          │  │  Contract       │    │
│                 │          │  └─────────────────┘    │
└─────────────────┘          └────────────────────────┘
```

## Component Breakdown

### Mobile App
- **Framework**: TBD (React Native vs Flutter)
- **Key screens**: Feed, Search/Discover, Request/Offer, Wallet, Chat, Profile, Community
- **Offline support**: Queue exchanges for sync when back online
- **Accessibility**: WCAG 2.1 AA (many users will be older adults)

### Backend API
- **Auth**: Supabase Auth (email, social login, magic links)
- **Database**: PostgreSQL via Supabase
- **Matching engine**: AI-powered skill-to-need matching (see `backend/src/matching/`)
- **Exchange engine**: Credit/debit ledger with double-entry bookkeeping
- **Social prescribing module**: NHS referral intake, outcome tracking, reporting
- **Notifications**: Push notifications, email digests, SMS for non-app users

### Blockchain Layer (Optional)
- **Chain**: TBD (Polygon, Stellar, or Solana for low cost)
- **TIM token contract**: ERC-20 compatible (if EVM chain) or equivalent
- **Mutual credit contract**: Custom contract for LETS-style balances
- **Settlement**: Periodic batch anchoring of off-chain transactions to on-chain
- **Hybrid approach**: Most transactions off-chain (fast, free), anchored on-chain for auditability

### Data Model
See `backend/src/models/` for schema definitions.

## Tech Stack Decision Matrix

| Component | Option A | Option B | Decision |
|-----------|----------|----------|----------|
| Mobile | React Native | Flutter | TBD |
| Backend | Node.js/Express | Python/FastAPI | TBD |
| Database | Supabase (PostgreSQL) | — | Supabase |
| Auth | Supabase Auth | — | Supabase Auth |
| Blockchain | Polygon (EVM) | Stellar | TBD |
| Hosting | Cloudflare Workers | Hetzner | TBD |
| CI/CD | GitHub Actions | — | GitHub Actions |

## TODO
- [ ] Finalise tech stack decisions
- [ ] Design database schema (ERD)
- [ ] API specification (OpenAPI)
- [ ] Sequence diagrams for key flows
- [ ] Security architecture review
- [ ] GDPR data flow mapping
