# Smart Contracts

## Overview
Optional blockchain layer for transparent, auditable community currency.

## Contracts

### TimeToken (TIM)
`time-token/TimeToken.sol`

Non-transferable utility token representing hours of community service. Minted on exchange confirmation, burned on service receipt. Anti-hoarding mechanisms, starter credits, cross-community portability.

### MutualCredit
`mutual-credit/MutualCredit.sol`

LETS-style mutual credit for goods/materials exchange. Members can carry negative balances within limits. Sum of all balances always equals zero (conservation invariant).

## Hybrid Architecture
Most transactions happen **off-chain** (fast, free, in PostgreSQL). On-chain settlement is periodic batch anchoring for auditability. This keeps gas costs near zero while maintaining a transparent record.

## Chain Selection
TBD — evaluating:
- **Polygon** (EVM compatible, low fees, mature ecosystem)
- **Stellar** (purpose-built for community currencies, very low fees)
- **Solana** (fast, cheap, but more complex development)
- **Base** (Coinbase L2, EVM compatible, growing ecosystem)

## Development Setup
```bash
# TODO: Set up Hardhat or Foundry project
# npm init -y
# npm install --save-dev hardhat @openzeppelin/contracts
# npx hardhat init
```

## TODO
- [ ] Initialise Hardhat/Foundry project
- [ ] Implement TimeToken contract
- [ ] Implement MutualCredit contract
- [ ] Write comprehensive tests
- [ ] Deploy to testnet
- [ ] Security audit
