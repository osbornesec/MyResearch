---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 7
research-context: CheckPoint High Availability CLI Commands
validation-status: preliminary
---

# CheckPoint cphaprob del_member Cluster Deregistration

## Core Concept

The `cphaprob del_member` command removes cluster members or critical devices (Pnotes) from CheckPoint ClusterXL configuration, excluding them from high availability operations and cluster state synchronization.

## Primary Functions

- **Member Deregistration**: Removes security gateways from cluster membership
- **Critical Device Removal**: Unregisters Pnotes from failover monitoring
- **Configuration Cleanup**: Eliminates references to removed components from cluster state
- **Administrative Control**: Provides controlled reduction of cluster membership

## Usage Context

```bash
cphaprob del_member [member-specification]
# Removes specified member from cluster configuration
# Requires cluster administrative privileges
# Triggers cluster reconfiguration and state cleanup
```

## Operational Considerations

- May trigger automatic failover if active member is removed
- Requires careful timing to avoid service disruption
- Cluster state synchronization adjusts to remaining members
- Policy distribution updated to reflect new cluster topology

## Risk Management

- Removing active members can cause immediate service impact
- Reducing cluster size affects fault tolerance capabilities
- Synchronization protocols must be verified after member removal
- Administrative verification recommended before execution

## Integration Points

- Coordinates with ClusterXL membership management
- Integrates with policy distribution mechanisms
- Affects cluster correction statistics and monitoring
- May require manual intervention for clean removal

## Source Attribution

- **Primary Source**: CheckPoint ClusterXL management documentation
- **Credibility Score**: 7/10 (limited detailed documentation available)
- **Validation Method**: Inferred from cluster management patterns