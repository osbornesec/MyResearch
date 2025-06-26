---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: advanced-features
source-lines: 30235-30291
---

# CheckPoint fwaccel on - SecureXL Runtime Acceleration Enable

## Command Purpose
Starts SecureXL acceleration on-the-fly after it was previously stopped, restoring hardware acceleration for firewall and VPN traffic processing.

## Syntax Pattern
```bash
fwaccel on [-a] [-q]
fwaccel6 on [-a] [-q]
```

## Key Parameters
- `-a`: On VSX Gateway, starts acceleration on all Virtual Systems
- `-q`: Suppresses output (quiet mode)
- IPv4/IPv6 variants available

## Advanced Context
Critical for enterprise recovery operations after debugging sessions. Complex dependency management with QoS (FloodGate-1 express mode conflicts), flow processing, and license validation. VSX environments require context awareness for targeted virtual system activation. Cluster deployments need synchronized member configuration.

## Connection Targets
- SecureXL acceleration architecture recovery
- QoS integration conflict resolution
- VSX virtual system context management
- Enterprise troubleshooting workflow completion