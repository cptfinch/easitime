# EasiTime Research Plan

## Origin
This builds on the 2017 EasiTime feasibility study for Easington Lane & Moorsley (County Durham), sponsored by Hetton New Dawn and Big Local. The timebank did not proceed beyond feasibility. This plan explores what has changed and identifies viable paths forward.

---

## Phase 1: Understand Why It Stalled — and What's Different Now

### 1.1 Post-Mortem Analysis
- Map the 11 recommendations against what was actually achieved
- Identify the specific blockers (funding? capacity? complexity? timing?)
- Interview/reflect on what would have been needed to proceed
- **Deliverable**: Honest assessment document

### 1.2 Landscape Delta: 2017 vs 2026
- Big Local ending March 2026 — what does this mean for the ecosystem?
- Hetton New Dawn's current focus (food bank, loneliness) — is timebanking still relevant to their mission?
- Durham Exchange — is it thriving or struggling? What can we learn?
- NHS social prescribing expansion — a new institutional pathway that didn't exist in 2017
- **Deliverable**: Gap analysis showing new opportunities and closed doors

---

## Phase 2: Explore the Three Most Promising Angles

### 2.1 Social Prescribing Timebank
**The pitch**: A timebank specifically designed as a social prescribing destination in County Durham.

Research questions:
- How does social prescribing work in County Durham specifically? Who are the link workers?
- What community activities do link workers currently refer to?
- Could a timebank be structured to accept and track referrals?
- What outcomes data would the NHS need to see?
- What funding streams exist for social prescribing community activities?
- **Deliverable**: Concept paper for a social prescribing-integrated timebank

### 2.2 Tech Platform: The "Nextdoor for Time Credits" App — **Adjoint Ltd Project**
**The opportunity**: No modern, mobile-first timebanking app exists. The gap between gig economy UX and timebanking UX is enormous. This is a natural product for **Adjoint Ltd** to develop.

**Currency innovation** — go beyond simple time credits:
- **Hybrid currency model**: Combine timebanking (1hr = 1hr) with LETS-style mutual credit (variable rates for goods/materials) in a single platform
- **Lightweight crypto token**: Issue a community token on a low-cost chain (e.g., Polygon, Stellar, or Solana) that represents time credits. Benefits:
  - Transparent, auditable ledger of all exchanges
  - Cross-community portability (credits earned in Easington Lane spendable in Durham, Newcastle, nationally)
  - Smart contracts for automated credit issuance, expiry rules, and anti-hoarding mechanisms
  - Potential for local business integration (spend time tokens at participating shops for discounts)
  - On-ramp to the broader Web3/DeFi ecosystem without the speculation — a *utility* token, not an investment
- **LETS integration**: Allow communities to run a parallel LETS currency alongside time credits, with configurable exchange rates between the two
- **Fiat bridge**: Optional cash top-up for members who want to "buy" time credits (e.g., busy professionals who can pay but can't volunteer) — revenue stream for the platform

Research questions:
- What would an MVP look like? (matching, credits, profiles, local feed, wallet)
- Build on existing open-source platforms or start fresh?
- AI matching: what data and algorithms would work for skill-to-need matching?
- Which blockchain/ledger is appropriate? (low cost, low energy, high throughput, simple)
- Smart contract design: credit issuance, expiry, transfer rules, anti-gaming
- Could this be a platform cooperative (member-owned)?
- Regulatory: are time tokens securities? (Almost certainly not if non-speculative utility tokens)
- Revenue model: freemium? NHS/local authority licensing? Cross-subsidy? Fiat bridge fees?
- **Deliverable**: Technical specification, tokenomics paper, and business model canvas
- **Owner**: Adjoint Ltd (R&D pipeline → adjoint-r-and-d)

### 2.3 Time Credits for Aging Well
**The evidence base**: This is where the strongest research exists (Hong Kong quasi-experimental studies, WHO recognition, Swiss Zeitvorsorge model).

Research questions:
- What does the Swiss "banking time for care" model look like in practice?
- Could a similar model work in County Durham's aging demographic?
- What's the intersection with existing Age UK, social care, and domiciliary care services?
- Could time credits supplement formal care packages?
- **Deliverable**: Evidence review and model design for a "Care Time Bank"

---

## Phase 3: Mathematical & Economic Analysis

### 3.1 Network Effects Modelling
**Goal**: Understand the critical mass problem — how many members and exchanges does a timebank need to become self-sustaining?

- Model a timebank as a bipartite graph (members ↔ services)
- Simulate exchange dynamics: supply/demand matching, network density
- Identify the **tipping point** — minimum viable network size
- Compare with empirical data from operating timebanks
- **Tools**: Python (NetworkX, SimPy), agent-based modelling
- **Deliverable**: Network simulation notebook with critical mass estimates

### 3.2 Economic Valuation
**Goal**: Quantify the economic value generated by a timebank

- Social Return on Investment (SROI) methodology
- Compare with NEF's SROI studies on timebanking
- Model: if 100 members each exchange 2 hours/month, what is the equivalent market value?
- Include: avoided costs (reduced loneliness → fewer GP visits → NHS savings)
- **Tools**: Python, spreadsheet modelling
- **Deliverable**: SROI calculator for a hypothetical Easington Lane timebank

### 3.3 Sustainability Modelling
**Goal**: Can a timebank ever be financially self-sustaining?

- Model different funding scenarios:
  - Grant-dependent (status quo — what's the survival probability?)
  - Membership fees (at what level? impact on participation?)
  - NHS social prescribing funding (per-referral payments?)
  - Local authority commissioning
  - Hybrid: part-funded coordinator + volunteer co-coordinators
  - Tech platform licensing (if we build the app)
- Monte Carlo simulation of cash flow under uncertainty
- **Deliverable**: Financial sustainability model with scenario analysis

---

## Phase 4: Prototype and Pilot Design

### 4.1 Minimum Viable Timebank
If we were to restart EasiTime, what's the simplest possible version?

- 20-30 members, one coordinator (part-time volunteer initially)
- Use hOurworld or Made Open (free/cheap, no custom build needed)
- Focus on a single theme: befriending/companionship for older adults
- Partner with one organisation (Hetton New Dawn? Age UK? GP surgery?)
- Run for 6 months as a pilot
- **Deliverable**: Pilot design document with timeline, budget, and success metrics

### 4.2 App MVP Specification — Adjoint Ltd Product
- User stories and wireframes
- Tech stack recommendation (React Native? Flutter? + backend)
- Matching algorithm design (AI-powered skill-to-need matching)
- Data model for credits, members, services, exchanges
- Wallet/token architecture: on-chain time credits vs off-chain with periodic settlement
- LETS mutual credit ledger design
- Smart contract specification (if using blockchain)
- GDPR compliance approach
- **Deliverable**: App specification document, tokenomics whitepaper
- **Adjoint R&D stream**: Community Currency Platform

---

## Phase 5: Synthesis

### 5.1 Decision Framework
Given all the research:
- Which angle has the best chance of success?
- What resources are needed vs available?
- What's the first concrete step?
- **Deliverable**: Decision matrix and recommended path forward

### 5.2 Updated Proposal
If proceeding:
- Rewrite the EasiTime proposal for 2026 context
- Identify specific funding sources
- Draft a pitch for NHS social prescribing integration or platform cooperative investment

---

## Tools & Resources

| Tool | Purpose |
|------|---------|
| Python (NetworkX) | Network effects modelling |
| Python (SimPy) | Agent-based simulation of exchange dynamics |
| Python (NumPy/Pandas) | Economic analysis, SROI calculations |
| Plotly/Matplotlib | Visualisations |
| hOurworld / Made Open | Platform evaluation (free accounts) |
| Solidity / Rust | Smart contract development (if blockchain route) |
| Hardhat / Anchor | Smart contract testing framework |
| React Native / Flutter | Mobile app development |
| Supabase / PostgreSQL | Backend database and auth |
| Adjoint infrastructure | Hosting, CI/CD, deployment |

## Key Contacts & Organisations
- Timebanking UK — training, resources, network
- Hetton New Dawn — original sponsor, still active
- Durham Exchange — nearest operating timebank
- County Durham social prescribing link workers
- Age UK County Durham
- NASP (National Academy for Social Prescribing)
- Platform Cooperativism Consortium (2026-2027 Fellowship)

---

## Timeline

| Phase | Scope | Status |
|-------|-------|--------|
| Phase 1 | Post-mortem & landscape | **Next** |
| Phase 2 | Three angles research | Pending |
| Phase 3 | Mathematical analysis | Pending |
| Phase 4 | Prototype design | Pending |
| Phase 5 | Synthesis & decision | Pending |
