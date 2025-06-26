---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: CheckPoint CLI Administration Foundation
validation-status: verified
domain: checkpoint-security
connections: 3
---

# CheckPoint fw hastat High Availability Status Command

## Core Concept

The `fw hastat` command displays information about CheckPoint computers in High Availability configuration and their current states, showing host number, HA state (active/stand-by), and machine status.

## Command Details

**Syntax**: `fw hastat [<Target1>] [<Target2>] ... [<TargetN>]`

**Parameters**:
- `<Target>`: IP address or resolvable hostname of managed Security Gateway or Cluster Member
- If no target specified: queries local computer

**Output Format**: 
```
HOST NUMBER HIGH AVAILABILITY STATE MACHINE STATUS
192.168.3.52    1    active      OK
192.168.3.53    2    stand-by    OK
```

## Deprecation Status

**IMPORTANT**: This command is outdated and replaced with:
- **Cluster members**: Use Gaia Clish command `show cluster state` or Expert mode `cphaprob state`
- **Management Servers**: Use `cpstat` command instead

## Usage Context

- Query cluster member states from Management Server
- Check local cluster member status
- Monitor High Availability configuration health
- Troubleshoot cluster failover scenarios

## Connection Potential

Links to cluster management, HA troubleshooting, and CheckPoint administration workflows.