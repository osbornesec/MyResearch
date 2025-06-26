---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 7
research-context: CheckPoint High Availability CLI Commands
validation-status: preliminary
---

# CheckPoint cphaprob add_member Cluster Registration

## Core Concept

The `cphaprob add_member` command registers new cluster members or critical devices (Pnotes) into an existing CheckPoint ClusterXL configuration, enabling them to participate in high availability operations.

## Primary Functions

- **Member Registration**: Adds new security gateways to existing cluster configuration
- **Critical Device Registration**: Registers Pnotes (critical monitoring points) for failover decisions
- **Configuration Integration**: Integrates new components into cluster state synchronization
- **Administrative Control**: Provides controlled expansion of cluster membership

## Usage Context

```bash
cphaprob add_member [member-specification]
# Adds specified member to cluster configuration
# Requires appropriate cluster administrative privileges
# Triggers cluster reconfiguration and synchronization
```

## Operational Requirements

- Cluster administrative privileges required for execution
- Target member must meet cluster compatibility requirements
- Network connectivity and synchronization protocols must be functional
- Policy synchronization may be required after member addition

## Integration Framework

- Coordinates with ClusterXL membership management protocols
- Integrates with cluster state synchronization mechanisms
- Requires coordination with policy installation procedures
- May trigger full synchronization with existing cluster members

## Source Attribution

- **Primary Source**: CheckPoint ClusterXL management documentation
- **Credibility Score**: 7/10 (limited detailed documentation available)
- **Validation Method**: Inferred from ClusterXL architecture patterns