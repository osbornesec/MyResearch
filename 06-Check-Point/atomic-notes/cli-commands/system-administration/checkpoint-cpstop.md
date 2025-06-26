---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
review-frequency: quarterly
---

# Check Point cpstop Command

## Core Concept
The `cpstop` command manually stops all Check Point processes and applications on a Security Gateway, Cluster Member, or Management Server.

## Primary Function
Terminates Check Point daemons and Security Servers to allow for maintenance, configuration changes, or troubleshooting operations.

## Command Syntax
**Basic syntax:**
```bash
cpstop
```

**Advanced syntax (Security Gateway/Cluster):**
```bash
cpstop [-fwflag {-default | -proc | -driver}]
```

**Scalable Platform syntax:**
```bash
g_all cpstop [-fwflag [-default | -proc | -driver]]
```

## Key Parameters
| Parameter | Description |
|-----------|-------------|
| `-fwflag -default` | Shuts down processes and loads Default Filter policy |
| `-fwflag -proc` | Shuts down processes but keeps current kernel policy and connection table |
| `-fwflag -driver` | Internal use only (Check Point Support guidance required) |

## Critical Usage Notes
- Must be run from Expert mode
- Typically paired with `cpstart` for service restart: `cpstop ; cpstart`
- Required before database migrations and major configuration changes
- For Multi-Domain environments, use `mdsstop_customer` instead
- WatchDog process requires separate `cpwd_admin kill` command

## Operational Context
Essential for maintenance workflows including policy installations, database operations, and system troubleshooting where clean service shutdown is required.

## Source Quality
- **Primary Source**: Check Point CLI Reference Guide R81.20
- **Credibility Score**: 9/10
- **Validation Method**: Official Check Point documentation