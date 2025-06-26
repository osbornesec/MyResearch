---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: "Check Point CLI command extraction from administrative foundation guide"
validation-status: verified
source: "Check Point CLI Reference Guide R81.20"
domain: "High Availability Management"
---

# Check Point CLI Command fw hastat

## Core Concept

Displays information about Check Point computers in High Availability configuration and their operational states, providing cluster status visibility.

## Syntax and Parameters

```bash
fw hastat [<Target1>] [<Target2>] ... [<TargetN>]
```

## Deprecation Status

**OUTDATED COMMAND** - Replaced by:
- **Cluster members**: `show cluster state` (Gaia Clish) or `cphaprob state` (Expert mode)
- **Management Servers**: `cpstat` command

## Target Specification

- **From Management Server**: IP address or resolvable hostname of managed Security Gateway/Cluster Member
- **No target specified**: Queries local computer
- **Multiple targets**: Space-separated list for batch queries

## Output Information

Displays:
- **HOST**: IP address or hostname
- **NUMBER**: Cluster member number
- **HIGH AVAILABILITY STATE**: active, stand-by, or other states
- **MACHINE STATUS**: OK or error conditions

## Use Cases

Historical command for:
- Cluster health monitoring
- High Availability state verification
- Troubleshooting cluster member status
- Multi-member cluster state overview

## Migration Path

**Modern Alternatives:**
- **cphaprob state**: Current Expert mode command for cluster status
- **show cluster state**: Current Gaia Clish command
- **cpstat**: Current Management Server monitoring

## Connection Potential

Links to:
- High Availability cluster management
- Cluster monitoring procedures
- Check Point clustering concepts
- Legacy command reference
- Modern cluster status tools
- Multi-member cluster operations
- Failover and load balancing