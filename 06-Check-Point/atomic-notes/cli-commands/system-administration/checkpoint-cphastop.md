---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-clusterxl-high-availability
validation-status: verified
command-family: cluster-management
---

# CheckPoint cphastop - Cluster Membership Termination Command

## Command Purpose
Stops ClusterXL cluster membership on a specific cluster node, removing it from active participation in high availability operations while preserving other Check Point services.

## Syntax Pattern
```bash
cphastop
```

## Key Parameters
- No parameters required - performs cluster-specific service shutdown
- Affects only ClusterXL/High Availability services
- Preserves other Check Point security services and management components
- Stops state synchronization between cluster members

## High Availability Context
Critical for cluster maintenance procedures and troubleshooting. Gracefully removes a cluster member from active participation without full service shutdown. Essential for maintenance windows where cluster failover capability must be temporarily suspended on specific nodes.

## Connection Targets
- [[checkpoint-cphastart-cluster-membership-initialization]]
- [[checkpoint-cpstop-process-termination]]
- [[clusterxl-high-availability-enterprise-architecture]]
- [[checkpoint-cluster-acceleration-coordination]]
- [[clusterxl-state-synchronization-framework]]