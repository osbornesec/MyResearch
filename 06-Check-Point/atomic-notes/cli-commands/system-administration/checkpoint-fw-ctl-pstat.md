---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-security-gateway-administration
validation-status: verified
review-frequency: monthly
---

# Check Point fw ctl pstat Command

## Core Concept
The `fw ctl pstat` command displays comprehensive Security Gateway internal statistics including system capacity, memory utilization, connections, and kernel performance metrics across multiple subsystems.

## Command Syntax
```bash
fw [-d] ctl pstat [-c] [-h] [-k] [-l] [-m] [-o] [-s] [-v [4|6]]
```

## Key Parameters
- **-c**: CoreXL Dispatcher statistics with per-instance and per-CPU breakdowns
- **-h**: Additional Hash kernel memory (hmem) statistics
- **-k**: Additional Kernel memory (kmem) statistics
- **-l**: Handles statistics
- **-m**: General CoreXL Dispatcher statistics
- **-o**: Additional Cookies statistics
- **-s**: Additional System kernel memory (smem) statistics
- **-v 4/6**: IPv4 or IPv6 specific traffic statistics

## Statistics Categories
1. **System Capacity Summary**: Memory usage and aggressive aging status
2. **Hash kernel memory (hmem)**: Memory allocation and block usage statistics
3. **System kernel memory (smem)**: Total memory usage with blocking/non-blocking breakdown
4. **Kernel memory (kmem)**: Memory allocations including external allocations
5. **Cookies**: Cookie allocation and caching statistics
6. **Connections**: Connection counts by protocol type and concurrency metrics
7. **Fragments**: IP fragmentation handling statistics
8. **NAT**: Network Address Translation statistics
9. **Handles**: System handle management metrics

## Performance Investigation Context
Critical diagnostic tool for identifying memory leaks, performance bottlenecks, and resource utilization patterns in Check Point Security Gateways. Essential for capacity planning and troubleshooting performance degradation.

## Connection Potential
- [[checkpoint-corexl-performance-architecture-framework]]
- [[checkpoint-memory-utilization-optimization]]
- [[checkpoint-performance-investigation-baseline-establishment]]
- [[checkpoint-acceleration-statistics-monitoring]]

## Source Quality
- **Primary Source**: Check Point Admin Foundation CLI Guide R81.20
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation verification