---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint High Availability CLI Commands
validation-status: verified
---

# CheckPoint cphaprob list Critical Device Inventory

## Core Concept

The `cphaprob list` command displays a comprehensive inventory of all registered critical devices (Pnotes) and their current operational status within a CheckPoint ClusterXL configuration, enabling administrators to identify hardware or process issues affecting cluster health.

## Primary Functions

- **Critical Device Enumeration**: Lists all registered Pnotes with status information
- **Health Status Display**: Shows operational state of monitored devices and processes
- **Troubleshooting Support**: Identifies specific components causing cluster member failures
- **Administrative Verification**: Confirms proper registration of critical monitoring points

## Usage Patterns

```bash
cphaprob list               # Standard critical device listing
cphaprob -ia list          # Detailed critical device information
show cluster members pnotes all  # Alternative comprehensive view
```

## Information Provided

- **Device Identifiers**: Unique Pnote IDs for each critical device
- **Status Indicators**: Operational state (up/down/failed) for each component
- **Registration Details**: Configuration information for monitoring parameters
- **Failure Impact**: Which devices would trigger member failover if failed

## Troubleshooting Applications

- Isolating hardware failures affecting cluster members
- Verifying critical process monitoring configuration
- Identifying root causes of unexpected failover events
- Validating cluster health before maintenance operations

## Integration Context

- Supports ClusterXL failover decision algorithms
- Integrates with cluster member health monitoring
- Coordinates with critical device registration framework
- Provides input for cluster correction statistics

## Source Attribution

- **Primary Source**: CheckPoint ClusterXL documentation and operational guides
- **Credibility Score**: 8/10
- **Validation Method**: Official documentation verification