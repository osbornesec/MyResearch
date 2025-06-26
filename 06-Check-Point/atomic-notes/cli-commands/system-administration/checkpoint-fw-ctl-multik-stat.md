---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-corexl-performance-analysis
validation-status: verified
connections: 3
review-frequency: monthly
---

# Check Point fw ctl multik stat Command

## Core Concept
The `fw ctl multik stat` command displays real-time statistics for Check Point's Multi-Core processing (CoreXL) firewall worker instances, showing per-core performance metrics including packet processing rates, connection counts, and CPU utilization across all active firewall kernel instances.

## Technical Implementation
- **Command Syntax**: `fw ctl multik stat [-f] [instance_id]`
- **Execution Context**: SecurePlatform/Gaia command line with expert mode privileges
- **Real-time Display**: Continuous statistics refresh showing current performance state
- **Instance Filtering**: Optional targeting of specific firewall worker instances for focused analysis

## Performance Metrics Displayed
- **Packet Processing**: Packets per second per instance
- **Connection Handling**: Active connections and new connection rates
- **CPU Utilization**: Per-core processor usage for each firewall worker
- **Memory Usage**: Instance-specific memory consumption patterns
- **Acceleration Status**: Hardware acceleration engagement indicators

## Operational Significance
Critical for diagnosing Multi-Core performance bottlenecks, identifying uneven load distribution across firewall instances, and optimizing CoreXL affinity configurations for maximum throughput in high-performance checkpoint deployments.

## Related Commands
- `fw ctl multik get_mode` - Display current CoreXL operational mode
- `fw ctl affinity -l -r` - Show detailed CPU affinity assignments
- `cpview` - Comprehensive performance monitoring dashboard

## Connection Potential
Links to checkpoint-corexl-performance-architecture-framework, checkpoint-corexl-cpu-affinity-range-specification, checkpoint-corexl-multik-command-framework