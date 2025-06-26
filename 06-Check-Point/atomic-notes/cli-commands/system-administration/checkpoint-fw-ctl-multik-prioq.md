---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-corexl
source-credibility: 8
research-context: checkpoint-performance-optimization
validation-status: verified
connections: 3
review-frequency: monthly
---

# CheckPoint fw ctl multik prioq Command

## Core Concept
The `fw ctl multik prioq` command displays the priority queue statistics for CheckPoint's CoreXL multi-kernel firewall worker instances, showing how traffic is distributed and prioritized across different kernel workers for optimal performance.

## Technical Function
- **Purpose**: Monitor CoreXL kernel worker priority queue utilization
- **Output**: Priority queue depth, distribution statistics, and worker load balancing
- **Performance Insight**: Identifies bottlenecks in multi-core traffic processing
- **Optimization**: Enables tuning of worker instance priority handling

## Operational Context
Priority queues in CoreXL manage how incoming packets are distributed among firewall kernel (fwk) instances, ensuring optimal load distribution while maintaining connection affinity and processing efficiency.

## Usage Pattern
```bash
fw ctl multik prioq
# Displays current priority queue statistics
# Shows per-worker queue depths and distribution ratios
```

## Performance Implications
- **High queue depths**: Indicate processing bottlenecks requiring attention
- **Uneven distribution**: Suggests affinity configuration optimization needs
- **Worker utilization**: Critical for CoreXL performance tuning decisions

## Connection Potential
Links to CoreXL architecture, fwk instance management, and CheckPoint performance optimization methodologies.