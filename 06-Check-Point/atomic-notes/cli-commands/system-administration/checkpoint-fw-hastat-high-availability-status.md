---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: network-protection
source-lines: 22650-22700
---

# CheckPoint fw hastat - High Availability Status

## Command Purpose
Shows information about Check Point computers in High Availability configuration and their states (active, standby, down).

## Syntax Pattern
```bash
fw hastat [<target1>] [<target2>] ... [<targetN>]
```

## Key Parameters
- `<target>`: IP address or hostname of managed Security Gateway/Cluster Member
- No targets: Query local computer
- Multiple targets: Query multiple cluster members simultaneously

## Security Context
DEPRECATED: Replaced by `show cluster state` (Gaia Clish) or `cphaprob state` (Expert mode) for cluster members, and `cpstat` for Management Servers. Provides High Availability status monitoring for cluster coordination.

## Connection Targets
- checkpoint-cluster-state-monitoring
- checkpoint-cphaprob-cluster-analysis
- checkpoint-high-availability-configuration
- checkpoint-cluster-member-coordination