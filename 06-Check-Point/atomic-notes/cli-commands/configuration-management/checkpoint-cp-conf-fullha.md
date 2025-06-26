---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI commands comprehensive analysis
validation-status: verified
---

# CheckPoint cp_conf fullha Command - Full High Availability Cluster Management

## Core Concept

The `cp_conf fullha` command manages the state of Full High Availability (Full HA) clusters on CheckPoint Security Gateways. This command enables, disables, and monitors Full HA cluster configuration, providing comprehensive management of high availability cluster membership and operational status.

## Command Syntax

| Command | Parameters | Description |
|---------|------------|-------------|
| `cp_conf fullha` | `enable` | Enables Full HA on this cluster member |
| | `disable` | Disables Full HA on this cluster member |
| | `del_peer` | Deletes the Full HA peer from configuration |
| | `state` | Shows current Full HA state on this computer |

## Functionality Overview

**Primary Functions:**
- **Cluster Enablement**: Activates Full High Availability on Security Gateway
- **State Management**: Controls Full HA operational status and configuration
- **Peer Management**: Manages Full HA peer relationships and removal
- **Status Monitoring**: Displays current Full HA operational state

**Full HA Capabilities:**
- Provides active-active high availability clustering
- Ensures continuous security services during member failures
- Maintains synchronized state between cluster members
- Supports automatic failover and load distribution

## Usage Context

**Platform Limitations:**
- **Important**: Does not apply to Scalable Platforms (Maestro and Chassis)
- Designed for traditional Security Gateway deployments
- Requires proper cluster configuration before command usage

**Prerequisites:**
- Security Gateway must be properly licensed for clustering
- Network infrastructure configured for cluster communication
- Proper cluster topology design and implementation
- Expert mode access for configuration changes

**Configuration Requirements:**
- Full HA cluster must be configured using R81.20 Installation and Upgrade Guide procedures
- This command manages existing cluster state, not initial configuration
- Proper synchronization interfaces and monitoring configured

## Implementation Examples

**Checking Full HA State:**
```bash
[Expert@Cluster_Member:0]# cp_conf fullha state
FullHA is currently enabled
[Expert@Cluster_Member:0]#
```

**Enabling Full HA:**
```bash
[Expert@Security_Gateway:0]# cp_conf fullha enable
Full HA enabled successfully
```

**Disabling Full HA:**
```bash
[Expert@Cluster_Member:0]# cp_conf fullha disable
Full HA disabled successfully
```

**Removing HA Peer:**
```bash
[Expert@Cluster_Member:0]# cp_conf fullha del_peer
Full HA peer deleted from configuration
```

## Operational Considerations

**State Management:**
- Enable/disable operations affect cluster membership status
- State changes require careful coordination with cluster peers
- Operations may trigger synchronization and failover procedures
- Status monitoring provides real-time cluster health information

**Peer Management:**
- `del_peer` removes peer configuration from local member
- Peer deletion may be required during cluster reconfiguration
- Proper peer removal prevents cluster split-brain scenarios
- Coordinate peer deletion with overall cluster maintenance procedures

**High Availability Impact:**
- Disabling Full HA on one member affects cluster redundancy
- State changes should be coordinated during maintenance windows
- Monitor cluster health after configuration changes
- Ensure proper failover testing after state modifications

## Security and Reliability Features

**Cluster Security:**
- Full HA maintains security policy enforcement during failovers
- Synchronized security state across cluster members
- Consistent threat protection during member transitions
- Maintains VPN tunnel state and connection tables

**Reliability Mechanisms:**
- Automatic failure detection and recovery
- Load distribution across active members
- State synchronization for connection persistence
- Monitoring interfaces for cluster health validation

## Integration Context

**Related Commands:**
- `cp_conf ha` - Standard ClusterXL high availability management
- `cphaprob` - Cluster status monitoring and troubleshooting
- `cpconfig` - Alternative GUI-based cluster configuration
- Cluster monitoring and synchronization utilities

**Configuration Dependencies:**
- Requires proper cluster installation and configuration
- Coordinates with ClusterXL configuration when applicable
- Integrates with Security Management Server cluster objects
- Works with cluster monitoring and alerting systems

## Troubleshooting Applications

**Common Use Cases:**
- Cluster member maintenance and service procedures
- Disaster recovery and cluster rebuilding operations
- Cluster configuration changes and peer management
- High availability testing and validation procedures

**Diagnostic Information:**
- State command provides immediate cluster status
- Enables verification of cluster configuration changes
- Supports troubleshooting cluster communication issues
- Assists in cluster health monitoring and maintenance

## Source Quality

- **Primary Source**: CheckPoint R81.20 Administration Foundation CLI Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from authoritative CheckPoint documentation
- **Technical Accuracy**: Verified through official command reference and clustering documentation

## Connection Potential

- Links to [[checkpoint-clusterxl-high-availability]]
- Connects with [[checkpoint-cp-conf-ha]]
- Relates to [[checkpoint-cluster-synchronization]]
- Integrates with [[checkpoint-scalable-platform-architecture]]
- Foundation for [[checkpoint-high-availability-troubleshooting]]