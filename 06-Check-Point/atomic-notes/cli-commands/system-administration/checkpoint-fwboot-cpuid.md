---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
connections: 3
review-frequency: monthly
---

# CheckPoint fwboot cpuid Command

## Core Concept

The `fwboot cpuid` command displays CPU and CPU core information on CheckPoint Security Gateways, providing detailed hardware topology visibility for performance optimization and troubleshooting.

## Description

Shows the number of available CPUs and CPU cores on Security Gateways, supporting various output formats from simple core IDs to comprehensive hardware mapping including physical processor, core, and thread relationships.

## Syntax

```bash
[Expert@HostName:0]# $FWDIR/boot/fwboot cpuid
    {-h | -help | --help}
    -c
    --full
    ht_aware
    -n
    --possible
```

## Parameters

| Parameter | Function | Output |
|-----------|----------|---------|
| No Parameters | Shows CPU core IDs | Returns available core IDs (e.g., "3 2 1 0") |
| `-c` | Counts CPU cores | Returns count via exit code |
| `--full` | Full hardware mapping | Shows cpuid, phys_id, core_id, thread_id |
| `ht_aware` | Hyper-Threading aware order | Lists cores in HT-aware sequence |
| `-n` | Counts CPUs | Returns CPU count via exit code |
| `--possible` | Counts possible cores | Returns possible core count via exit code |

## Usage Context

- **Performance Analysis**: Understanding hardware topology for CoreXL optimization
- **Capacity Planning**: Determining available processing resources
- **Troubleshooting**: Identifying CPU-related performance bottlenecks
- **Configuration Validation**: Verifying hardware detection accuracy

## Technical Notes

- **Expert Mode Required**: Must execute from Expert mode prompt
- **Exit Code Usage**: Counting parameters store results in shell exit code ($?)
- **Hardware Detection**: Reflects actual detected hardware capabilities
- **Hyper-Threading Awareness**: Special ordering for HT-enabled systems

## Connection Potential

- [[checkpoint-corexl-performance-architecture-framework]] - CPU topology feeds CoreXL configuration
- [[checkpoint-performance-investigation-baseline-establishment]] - Hardware inventory foundation
- [[checkpoint-scalable-platform-architecture]] - Resource capacity assessment
- [[checkpoint-cpu-bottleneck-identification-methodology]] - Performance troubleshooting context

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide R81.20
- **Credibility Score**: 9/10
- **Validation Method**: Official documentation verification