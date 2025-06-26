---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: advanced-features
source-lines: 30703-30758
---

# CheckPoint fwaccel stats - SecureXL Performance Statistics Analysis

## Command Purpose
Displays comprehensive SecureXL acceleration statistics including packets, bytes, connections, and specialized metrics for cluster, multicast, Identity Awareness, and PXL processing.

## Syntax Pattern
```bash
fwaccel stats [-c] [-d] [-l] [-m] [-n] [-o] [-p] [-q] [-r] [-s] [-x]
fwaccel6 stats [-c] [-d] [-l] [-m] [-n] [-o] [-p] [-q] [-r] [-s] [-x]
```

## Key Parameters
- `-c`: Cluster Correction statistics
- `-d`: Device drop statistics
- `-m`: Multicast traffic statistics
- `-n`: Identity Awareness (NAC) statistics
- `-p`: SecureXL violations (F2F packets)
- `-s`: Summary statistics only
- `-x`: PXL (SecureXL + PSL) statistics
- `-r`: Reset all counters

## Advanced Context
Critical enterprise performance monitoring tool for high-throughput environments. Provides granular visibility into acceleration effectiveness, F2F (Fast-to-Firewall) violations, cluster corrections, and PXL (Passive Streaming Library) processing. Essential for capacity planning, bottleneck identification, and optimization validation in complex network architectures.

## Connection Targets
- SecureXL acceleration performance analysis
- Enterprise capacity planning methodologies
- Cluster correction optimization patterns
- PXL and PSL streaming technology integration