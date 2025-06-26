---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint High Availability CLI Commands
validation-status: verified
---

# CheckPoint cphaprob Cluster Health Monitoring

## Core Concept

The `cphaprob` command in CheckPoint ClusterXL provides comprehensive cluster member health monitoring and status reporting, displaying the current operational state (active/standby/down) of each cluster member and monitoring critical processes and devices.

## Primary Functions

- **Cluster State Monitoring**: Displays current status of each cluster member with role identification
- **Critical Process Monitoring**: Tracks critical cluster member processes and devices for failover triggers
- **Health Diagnostics**: Provides detailed statistics on cluster performance and communication
- **Role Verification**: Lists administrative and operational roles assigned to each cluster node

## Common Usage Patterns

```bash
cphaprob state          # Show cluster member status and roles
cphaprob list           # Display registered critical devices and status  
cphaprob -f corr        # Show cluster correction statistics
cphaprob roles          # Display cluster roles for all members
```

## Operational Context

Essential for cluster administrators to verify failover readiness, identify hardware/process issues, and perform root cause analysis of cluster communication problems. Forms the foundation for ClusterXL troubleshooting workflows.

## Integration Points

- Works with ClusterXL architecture for high availability management
- Integrates with critical device (Pnote) monitoring framework
- Provides input for failover decision algorithms
- Supports cluster correction statistics analysis

## Source Attribution

- **Primary Source**: CheckPoint ClusterXL documentation and troubleshooting guides
- **Credibility Score**: 8/10
- **Validation Method**: Official documentation cross-reference