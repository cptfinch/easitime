# Tokenomics

## Time Token (TIM)

### Overview
A utility token representing one hour of community service. Non-speculative, non-transferable for fiat (except via the fiat bridge), designed purely for community exchange.

### Token Properties
- **Name**: TIM (Time In Minutes) or similar
- **Base unit**: 1 TIM = 1 hour of service
- **Divisibility**: Down to 15-minute increments (0.25 TIM)
- **Supply**: Minted on service completion, no fixed cap
- **Expiry**: Configurable per-community (e.g., credits expire after 12 months of inactivity)

### Issuance Rules
- Credits minted when a service exchange is confirmed by both parties
- No pre-minting or speculative issuance
- Community admins can issue "starter credits" to new members (e.g., 2 TIM welcome bonus)

### Anti-Gaming Mechanisms
- [ ] Maximum balance cap (e.g., 100 TIM) to prevent hoarding
- [ ] Minimum exchange frequency to maintain membership
- [ ] Demurrage option (small decay on unused credits to encourage circulation)
- [ ] Mutual confirmation required (both giver and receiver confirm)
- [ ] Dispute resolution process

### Cross-Community Portability
- Credits earned in Community A can be spent in Community B (if both opt in)
- Exchange rate: 1:1 (preserving the egalitarian principle)
- Settlement: periodic batch settlement between community ledgers

### Fiat Bridge
- Members can "buy" TIM credits with cash (e.g., £10 = 1 TIM)
- Revenue goes to the platform/community fund (coordinator salary, events)
- This does NOT make TIM a security — it's a one-way purchase of a service voucher
- No selling TIM for fiat (prevents speculation)

## LETS Mutual Credit Layer

### Overview
Alongside time credits, communities can optionally run a LETS-style mutual credit currency for goods and materials.

- **Name**: Configurable per community (e.g., "Lanes" for Easington Lane)
- **Mechanism**: Mutual credit — members can go negative (within limits)
- **Valuation**: Community-set, not 1:1 with time
- **Use case**: "I'll sell you this bookshelf for 5 Lanes" — goods exchange that doesn't fit the time model

### Relationship to TIM
- Separate currency, displayed in separate wallet
- Communities choose whether to enable LETS, TIM, or both
- No automatic conversion between TIM and LETS credits

## Regulatory Position
- [ ] Research: Are TIM tokens securities? (Almost certainly not — non-transferable, non-speculative utility tokens)
- [ ] Research: HMRC position on community currencies
- [ ] Research: FCA position on payment tokens vs utility tokens
- [ ] DWP implications for benefits claimants

## TODO
- [ ] Write formal tokenomics whitepaper
- [ ] Model token velocity and circulation dynamics
- [ ] Design smart contract specification
- [ ] Legal review of regulatory position
