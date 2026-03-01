# Ledger Engine

## Overview
Double-entry bookkeeping system for time credits and LETS mutual credit. Every transaction has two entries that sum to zero.

## Time Credits (TIM)
- Credits minted on service completion (provider gets +X, system account gets -X)
- Credits burned on service receipt (receiver gets -X, system account gets +X)
- Starter credits issued from community pool
- Expiry processed on schedule (configurable per community)

## LETS Mutual Credit
- Direct member-to-member transfer
- Member A gets +X, Member B gets -X (sum = 0)
- Negative balances allowed within credit limit
- Conservation invariant: sum of all balances = 0 (always)

## Blockchain Anchoring
- Batch transactions periodically
- Compute Merkle root of batch
- Anchor hash on-chain for auditability
- Store tx hash in chain_anchors table

## TODO
- [ ] Implement double-entry ledger
- [ ] Add balance calculations and constraints
- [ ] Add expiry processing
- [ ] Add Merkle tree computation
- [ ] Add on-chain anchoring
- [ ] Add audit trail / reconciliation
