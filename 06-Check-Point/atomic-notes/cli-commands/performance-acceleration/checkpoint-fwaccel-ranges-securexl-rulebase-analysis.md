---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: advanced-features
source-lines: 30392-30448
---

# CheckPoint fwaccel ranges - SecureXL Rule Base Range Analysis

## Command Purpose
Displays SecureXL loaded ranges for source IPs, destination IPs, and service ports derived from Rule Base during policy installation, enabling Drop Template troubleshooting.

## Syntax Pattern
```bash
fwaccel ranges [-h] [-a] [-l] [-p <Range ID>] [-s <Range ID>]
fwaccel6 ranges [-h] [-a] [-l] [-p <Range ID>] [-s <Range ID>]
```

## Key Parameters
- `-a`: Shows full information for all loaded ranges
- `-l`: Lists loaded ranges (0=source IPs, 1=destination IPs, 2=destination ports/protocols)
- `-p <Range ID>`: Shows full information for specified range
- `-s <Range ID>`: Shows summary information for specified range

## Advanced Context
Critical for enterprise policy optimization and Drop Template analysis. Ranges created during policy installation represent optimized IP/port ranges for SecureXL acceleration. Non-deterministic objects (Domain objects, Dynamic objects) converted to "Any" IP addresses. Essential for troubleshooting Anti-Spoofing, NAT64/NAT46, and template-based acceleration performance.

## Connection Targets
- SecureXL Drop Template architecture
- Policy installation optimization patterns
- Anti-Spoofing enforcement mechanisms
- Enterprise network acceleration troubleshooting