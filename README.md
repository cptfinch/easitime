# EasiTime — Community Currency Platform

**An Adjoint Ltd project**

A modern community currency platform combining timebanking, LETS mutual credit, and blockchain-based time tokens. The app nobody has built yet — "Nextdoor for Time Credits" with AI matching, cross-community portability, and NHS social prescribing integration.

## The Problem

Timebanking platforms are stuck in 2010. No AI matching, no modern mobile UX, no cross-community portability, no integration with health services. Meanwhile, communities need these tools more than ever.

## The Solution

### Three Currency Layers
1. **Time Credits (TIM)** — 1 hour = 1 hour, egalitarian service exchange
2. **LETS Mutual Credit** — Variable-rate community currency for goods and materials
3. **Blockchain Token** — Optional on-chain anchoring for transparency and portability

### Key Differentiators

| Feature | hOurworld | Made Open | TimeRepublik | **EasiTime** |
|---------|:---------:|:---------:|:------------:|:------------:|
| Time Credits | Yes | Yes | Yes | **Yes** |
| LETS Mutual Credit | No | No | No | **Yes** |
| Crypto Token | No | No | Exploring | **Yes** |
| AI Matching | No | No | No | **Yes** |
| Modern Mobile App | Basic | Web | Yes | **Yes** |
| Social Prescribing | No | No | No | **Yes** |

## Project Structure

```
├── docs/
│   ├── tokenomics/          # TIM token, LETS mutual credit, fiat bridge
│   ├── business-model/      # Business model canvas, pricing, cooperative structure
│   ├── architecture/        # System architecture, tech stack, data model
│   ├── social-prescribing/  # NHS social prescribing integration
│   └── care-timebank/       # "Bank time for future care" (Swiss Zeitvorsorge model)
├── contracts/
│   ├── time-token/          # TIM token smart contract (Solidity)
│   └── mutual-credit/       # LETS mutual credit smart contract
├── app/                     # Mobile app (React Native / Flutter)
├── backend/
│   └── src/
│       ├── models/          # Database schema (PostgreSQL)
│       ├── matching/        # AI-powered skill-to-need matching engine
│       └── ledger/          # Double-entry credit/debit ledger
└── simulations/
    ├── network-effects/     # Critical mass modelling
    ├── sroi/                # Social Return on Investment calculator
    └── sustainability/      # Financial sustainability scenarios
```

## Use Cases

1. **Community Timebank** — Local skill exchange with modern tech
2. **Social Prescribing** — NHS link workers refer patients to structured community activity
3. **Care Time Bank** — Bank hours now, draw them down when you need care later

## Status

**R&D / Design phase** — project skeleton with specifications and stubs. See [RESEARCH-PLAN.md](RESEARCH-PLAN.md) for the roadmap.

## Background

This project evolved from a [2017 feasibility study](https://github.com/cptfinch/timebank-feasibility-study) for a timebank in Easington Lane, County Durham. The original study found community support but the project didn't proceed beyond feasibility — primarily due to the unsolved coordinator funding sustainability problem that affects all timebanks. This repo reimagines the concept as a scalable technology platform.

## License

TBD

## Contributing

This is currently in early design phase. If you're interested in community currencies, timebanking, or platform cooperativism, open an issue or get in touch.
