# AI Matching Engine

## Overview
Match members who need services with members who offer them. No existing timebanking platform does this with AI — this is our key differentiator.

## Matching Dimensions
1. **Skill match**: Does member A offer what member B needs?
2. **Proximity**: How close are they geographically?
3. **Availability**: Do their schedules overlap?
4. **History**: Have they exchanged before? (prefer new connections for social capital)
5. **Balance**: Does the provider have capacity? Does the receiver have credits?
6. **Community**: Same community or cross-community?

## Algorithm Approaches

### Phase 1: Rule-based (MVP)
- Simple filtering: skill match + proximity + availability
- Rank by distance
- No ML required

### Phase 2: Embedding-based
- Embed member profiles and service descriptions using sentence transformers
- Cosine similarity matching
- Learn from successful exchanges (what combinations work well?)

### Phase 3: Recommendation engine
- Collaborative filtering (members who exchanged with X also exchanged with Y)
- Graph-based recommendations (NetworkX / GNN)
- Proactive suggestions: "You might enjoy helping [member] with [service]"

## TODO
- [ ] Implement Phase 1 rule-based matcher
- [ ] Design embedding pipeline for Phase 2
- [ ] Collect training data from pilot exchanges
- [ ] Build recommendation engine (Phase 3)
