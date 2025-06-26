---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-clustering-investigation
validation-status: verified
connections: 3
review-frequency: monthly
domain: infrastructure-security
---

# Cluster Control Protocol CCP Architecture

## Core Concept

Cluster Control Protocol (CCP) is Check Point's proprietary UDP protocol (port 8116) that enables multi-member cluster coordination through dual functions: health monitoring and state synchronization between cluster members.

## Technical Framework

**Protocol Characteristics:**
- **Transport:** UDP port 8116
- **Scope:** Inter-cluster member communication
- **Bidirectional:** All cluster members exchange CCP packets
- **Header Fields:** Protocol version, CoreXL instance count, CoreXL instance ID

**Primary Functions:**
1. **Health Checks:** Interface state monitoring, software component status, failover notifications
2. **State Synchronization:** Delta sync of connection information between cluster members

## Implementation Details

**CCP Packet Structure:**
- Protocol version field (version compatibility checking)
- Total CoreXL Firewall instances count
- CoreXL instance ID mapping
- Health status payload
- Connection state delta information

**Version Compatibility Rules:**
- Members receiving lower CCP version packets enter 'Ready' state
- 64-bit systems: CCP version = fwha_version + 1
- VSX mode: CCP version = fwha_version + 2 (32-bit) or +3 (64-bit)

## Integration Patterns

**Network Topology Support:**
- Enhanced Active/Backup bond configurations
- Multi-switch redundant topologies
- Synchronization interface redundancy through bonding
- Path monitoring between cluster members

## Troubleshooting Context

**Common Issues:**
- Version mismatches causing 'Ready' state
- CCP packet loss during high CPU load
- Sync network connectivity problems
- CoreXL instance count discrepancies

**Diagnostic Commands:**
- `fw ctl get int fwha_version` - Check CCP version
- `fw ctl debug -m cluster + ccp` - Enable CCP debugging
- Network analysis for UDP 8116 traffic patterns

## Connection Potential

Links to: [[vmac-mode-cluster-addressing]], [[cluster-state-synchronization-mechanisms]], [[clusterxl-failover-detection-methods]]

**Source:** Check Point ClusterXL R81.20 Administration Guide, SK42096
**Reference:** SK25977 (Cluster isolation), SK93306 (ATRG ClusterXL)