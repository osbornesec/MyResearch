---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: multi-domain
source-lines: 40070-40154
---

# CheckPoint vsx stat - Virtual System Status Monitoring and Analysis

## Command Purpose
Displays comprehensive VSX Gateway status including Virtual Systems, Virtual Routers, connection statistics, policy installation status, and SIC trust relationships.

## Syntax Pattern
```bash
vsx stat [-l] [-v] [<VSID>]
```

## Key Parameters
- `-l`: Lists all Virtual Devices with detailed information
- `-v`: Shows summary table with all Virtual Devices
- `<VSID>`: Shows information for specific Virtual Device by ID

## Advanced Context
Essential for enterprise VSX monitoring and troubleshooting. Provides critical visibility into Virtual System health, connection utilization, policy installation status, and SIC trust state. Supports Scalable Platforms (Maestro, Chassis) with Expert mode requirements. Critical for capacity planning with connection limits, peak tracking, and virtual device type identification (S=Virtual System, R=Bridge mode, R=Virtual Router, W=Virtual Switch).

## Connection Targets
- VSX Gateway architecture monitoring
- Virtual System capacity planning and optimization
- Enterprise multi-tenancy status verification
- Scalable Platform deployment patterns