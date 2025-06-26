---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-corexl-performance-optimization
validation-status: verified
review-frequency: monthly
---

# Check Point fw ctl affinity Command

## Core Concept
The `fw ctl affinity` command provides granular control over CPU core assignments for CoreXL Firewall instances, network interfaces, and processes, enabling optimal multi-core performance through precise resource affinity management.

## Command Syntax
```bash
fw ctl affinity [-l] [-s -i Interface_Name CPU_ID] [-s -p PID CPU_IDs] [-s -d -inst Instance_ranges -cpu CPU_ID_ranges]
```

## Key Parameters
- **-l**: List current CoreXL affinities with detailed assignment information
- **-s -i Interface_Name CPU_ID**: Set network interface to specific CPU core affinity
- **-s -p PID CPU_IDs**: Set process affinity to designated CPU cores
- **-s -d -inst Instance_ranges -cpu CPU_ID_ranges**: Assign Firewall instances to CPU core ranges
- **Range Syntax**: Supports single IDs (3), ranges (0-5), and combinations (0-2 4)

## Affinity Assignment Types
1. **Interface Affinity**: Binds network interfaces to specific CPU cores for interrupt handling optimization
2. **Process Affinity**: Controls which CPU cores can execute specific processes
3. **FireWall Instance Affinity**: Assigns CoreXL FWK instances to dedicated CPU cores
4. **Combined Affinity**: Coordinates multiple assignment types for optimal load distribution

## Performance Optimization Context
Essential tool for CoreXL multi-core optimization, preventing CPU core contention and enabling deterministic performance scaling. Critical for high-throughput environments requiring precise resource control.

## Connection Potential
- [[checkpoint-corexl-affinity-cpu-assignment-system]]
- [[checkpoint-corexl-multik-command-framework]]
- [[checkpoint-corexl-performance-architecture-framework]]
- [[checkpoint-corexl-fwaffinity-configuration-system]]

## Source Quality
- **Primary Source**: Check Point ATRG CoreXL Technical Reference sk98737
- **Credibility Score**: 9/10
- **Validation Method**: Cross-referenced with Check Point performance optimization guides