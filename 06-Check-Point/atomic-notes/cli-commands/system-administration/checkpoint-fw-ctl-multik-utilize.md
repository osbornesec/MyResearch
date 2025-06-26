---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: corexl
source-lines: 1378
---

# CheckPoint fw ctl multik utilize - CoreXL Queue Utilization Display

## Command Purpose
Shows the CoreXL queue utilization for each CoreXL Firewall instance, providing real-time visibility into packet processing load distribution across multi-core architecture.

## Syntax Pattern
```bash
fw ctl multik utilize
fw6 ctl multik utilize
```

## Key Parameters
- **IPv4 version**: `fw ctl multik utilize` (standard command)
- **IPv6 version**: `fw6 ctl multik utilize` (IPv6-specific variant)
- **No parameters**: Command accepts no additional options or filters

## Operational Context
Essential monitoring tool for CoreXL performance analysis and load balancing assessment. Does not support VSX environments, limiting usage to standalone or cluster deployments without virtual system partitioning.

## Performance Analysis Value
Enables administrators to identify queue bottlenecks, assess core utilization patterns, and optimize traffic distribution across CoreXL Firewall instances for maximum throughput efficiency.

## Connection Targets
- checkpoint-corexl-multik-command-framework
- checkpoint-corexl-multi-core-performance-scaling
- checkpoint-corexl-firewall-worker-instance-architecture
- checkpoint-cpview-performance-monitoring-interface
- checkpoint-acceleration-statistics-monitoring