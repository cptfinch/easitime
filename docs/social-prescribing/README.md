# Social Prescribing Integration

## Overview
Position EasiTime as a structured community activity that NHS social prescribing link workers can refer patients to. This provides both a user acquisition channel and a funding stream.

## How Social Prescribing Works
1. GP identifies patient with non-clinical needs (loneliness, isolation, low confidence)
2. GP refers to a **Social Prescribing Link Worker** (SPLW)
3. SPLW has an initial conversation with the patient
4. SPLW connects patient to a **community activity** (e.g., a timebank)
5. Patient participates, outcomes are tracked

## Integration Points

### Referral Intake
- [ ] API endpoint for SPLW to refer patients directly into the platform
- [ ] Referral form with consent, needs assessment, contact preferences
- [ ] Auto-matching: suggest services the patient could receive AND skills they could offer
- [ ] Notification to community coordinator

### Outcome Tracking
- [ ] Track engagement (exchanges made, hours contributed, hours received)
- [ ] Self-reported wellbeing scores (ONS-4, WEMWBS, or similar)
- [ ] Loneliness measures (UCLA Loneliness Scale or De Jong Gierveld)
- [ ] Automated reporting to referring SPLW
- [ ] Aggregate impact dashboards for commissioners

### Funding Model
- [ ] Research: what do NHS ICBs/PCNs pay for social prescribing community activities?
- [ ] Per-referral model vs annual licence
- [ ] Outcomes-based commissioning (payment by results)

## Research Needed
- [ ] Map social prescribing in County Durham (ICB, PCNs, SPLWs)
- [ ] Identify current community activities SPLWs refer to
- [ ] Understand NASP reporting requirements
- [ ] Review NHS 10-Year Health Plan community services provisions
- [ ] Contact NASP about timebanking integration

## TODO
- [ ] Write concept paper for NHS commissioners
- [ ] Design referral workflow and data model
- [ ] Build outcome tracking module
- [ ] Pilot with one GP practice / PCN
