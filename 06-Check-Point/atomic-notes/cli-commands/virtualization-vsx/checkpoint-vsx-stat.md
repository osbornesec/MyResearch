---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-firewall
concept-api: vsx-stat-command
connections: 3
review-frequency: monthly
source-credibility: 9
---

# VSX Stat Command Real-Time Virtual System Statistics

## Core Concept
The `vsx stat` command provides real-time statistics for Virtual System Extension (VSX) environments, displaying active virtual systems, resource utilization, and performance metrics across the VSX gateway.

## Command Usage
```bash
vsx stat [-v] [-l]
vsx stat -s <vs_id>
```

## Key Output Metrics
- **Virtual System Count**: Number of active VS instances
- **CPU Utilization**: Per-VS CPU consumption percentages
- **Memory Usage**: RAM allocation across virtual systems
- **Connection Count**: Active connections per VS
- **Throughput Statistics**: Data transfer rates per virtual system
- **Policy Installation Status**: Current policy state per VS

## Command Options
- `-v`: Verbose output with detailed statistics
- `-l`: Long format display with extended metrics
- `-s <vs_id>`: Statistics for specific virtual system ID

## Performance Analysis Context
Essential for VSX performance monitoring, capacity planning, and troubleshooting virtual system resource contention. Provides baseline metrics for scaling decisions and load balancing optimization.

## Connection Potential
- [[checkpoint-vsx-architecture]]
- [[checkpoint-performance-monitoring]]
- [[checkpoint-virtual-system-management]]
- [[checkpoint-resource-utilization-analysis]]