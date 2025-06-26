---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: advanced-security-architecture
validation-status: verified
source: sk138672 - Management Data Plane Separation (MDPS)
---

# MDPS Fundamental Architecture and Limitations

## Core Concept
Management Data Plane Separation (MDPS) isolates management traffic from data traffic by preventing management plane traffic from routing to or through the data plane, with specific limitations and configuration restrictions.

## Primary Architecture Principle
- **Routing separation**: Traffic from Management Plane cannot be routed to or through Data Plane when enabled
- **Gaia Clish only**: Configuration of Routing Separation or Resource Separation only possible in Gaia Clish
- **Interface restrictions**: Logical interfaces not supported on Management interface (Alias, Bridge, VPN Tunnel, 6in4 Tunnel, PPPoE, Bond, VLAN)

## ClusterXL Integration Limitations
- **VRRP incompatibility**: MDPS not supported with VRRP cluster
- **Subnet restrictions**: Same subnet for Management and Data interface not supported with ClusterXL and Routing separation
- **Topology operations**: "Get interfaces with topology" not supported in SmartConsole

## Platform-Specific Limitations
- **Scalable Platforms**: CoreXL Dynamic Balancing must be disabled before enabling MDPS
- **Security Groups**: Gaia Portal not supported on Security Group when MDPS enabled
- **R81.20 Chassis**: Security Groups do not support MDPS

## Operational Constraints
- **IPv6 limitations**: Not supported on Management interface when using Resource Separation
- **Backup/Snapshot**: Must collect on remote host only through Management plane
- **LLDP feature**: Not supported in R81 version when MDPS enabled
- **SNMPv3**: Maximum 26 characters for username when MDPS enabled

## Research Context
Advanced security architecture for enterprise network segmentation and traffic isolation.

## Connection Potential
- Links to network segmentation and traffic isolation concepts
- Connects to ClusterXL and high availability patterns
- Related to scalable platform architecture and configuration management