---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: check-point-atrg-ipv6-processing
validation-status: verified
connections: 2
---

# IPv6 ClusterXL High Availability Support

## Core Concept
Check Point ClusterXL provides High Availability cluster support for IPv6 environments with full status information synchronization and automatic failover mechanisms. Load Sharing functionality is explicitly not supported for IPv6 deployments, limiting clustering to High Availability configurations only.

## Supported Features
- **High Availability Clusters**: Full support for IPv6 failover clustering between cluster members
- **Status Synchronization**: All IPv6 status information synchronized between cluster nodes
- **Automatic Failover**: IPv6 clustering mechanism activates during cluster member failures
- **Integration Support**: Includes CoreXL, SecureXL, and ClusterXL integration for enhanced performance

## Limitations
- **Load Sharing Restriction**: Load Sharing clustering mode explicitly not supported for IPv6 traffic
- **Appliance Compatibility**: Quantum Spark Gateways support IPv6 only on models 1500, 1600, 1800, and higher
- **Feature Subset**: IPv6 clustering limited to High Availability mode rather than full clustering feature set

## Operational Characteristics
- **Seamless Failover**: IPv6 connections maintain continuity during cluster member transitions
- **State Management**: IPv6 connection tables and routing information synchronized across cluster
- **Performance Integration**: Enhanced performance through CoreXL and SecureXL remains available in IPv6 clusters

## Related Concepts
- [[ipv6-performance-impact-memory-requirements]]
- [[check-point-clusterxl-architecture-patterns]]

## Source Attribution
Check Point ATRG IPv6 sk92368 - Official Technical Documentation
Credibility: 10/10 - Authoritative vendor documentation