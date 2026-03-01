# Network Effects Simulation

## Goal
Model a timebank as a network to find the **critical mass** — the minimum number of members and service categories needed for a self-sustaining exchange ecosystem.

## Approach
- Model members as nodes, potential exchanges as edges
- Bipartite graph: members ↔ skills (offers and needs)
- Agent-based simulation: members join, post offers/needs, exchanges happen (or don't)
- Measure: exchange rate, wait time, unmet needs, member churn

## Key Questions
1. What's the minimum viable network size for a local timebank?
2. How does skill diversity affect exchange frequency?
3. What's the impact of a "coordinator" node that facilitates matches?
4. How does geographic spread affect viability?
5. At what point does cross-community portability become valuable?

## Tools
- Python: NetworkX, SimPy, NumPy, Matplotlib/Plotly

## TODO
- [ ] Build basic network model
- [ ] Implement agent-based exchange simulation
- [ ] Run parameter sweeps (network size, skill diversity, geography)
- [ ] Visualise critical mass threshold
- [ ] Compare with empirical data from operating timebanks
