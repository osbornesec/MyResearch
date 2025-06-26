---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 22154-22243
---

# CheckPoint fw ctl pstat - Performance Statistics

## Command Purpose
Shows Security Gateway internal statistics including system capacity, memory usage, connections, fragments, NAT, and CoreXL performance metrics.

## Syntax Pattern
```bash
fw [-d] ctl pstat [-c] [-h] [-k] [-l] [-m] [-o] [-s] [-v {4|6}]
```

## Key Parameters
- `-c`: Detailed CoreXL Dispatcher statistics per instance/CPU
- `-h`: Additional Hash kernel memory (hmem) statistics
- `-k`: Additional Kernel memory (kmem) statistics
- `-l`: Handles statistics
- `-m`: General CoreXL Dispatcher statistics
- `-o`: Additional Cookies statistics
- `-s`: Additional System kernel memory (smem) statistics
- `-v {4|6}`: IPv4 or IPv6 specific statistics

## Security Context
Primary performance monitoring tool for Security Gateway health assessment. Provides system capacity summary, memory utilization, connection statistics, and aggressive aging status. Critical for capacity planning and performance troubleshooting.

## Connection Targets
- checkpoint-corexl-performance-architecture-framework
- checkpoint-memory-utilization-optimization
- checkpoint-aggressive-aging-mechanisms
- checkpoint-system-capacity-monitoring