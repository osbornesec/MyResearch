---
state: permanent
type: atomic-note
created: 2025-06-19
domain: checkpoint-maestro
source-credibility: 9
validation-status: verified
last-reviewed: 2025-06-19
connections: 5
review-frequency: monthly
---

# Maestro Security Gateway Module SGM Architecture

## Core Concept

Individual Check Point security appliances participating as members within Maestro Security Groups, providing distributed security processing while maintaining unified management and policy enforcement across the cluster.

## SGM Architectural Components

### Individual Appliance Role
- **Function**: Standard Check Point security appliance providing firewall, VPN, and security blade functionality
- **Security Group Membership**: Participates as member in larger Security Group cluster
- **Shared Processing**: Contributes processing capacity to overall Security Group performance
- **Individual Identity**: Maintains unique appliance characteristics within group context

### Scale Limits and Boundaries
- **Single-Site Limit**: Maximum 14 SGMs per Security Group
- **Dual-Site Limit**: Maximum 28 SGMs total (14 per site) per Security Group
- **Security Group Limit**: Maximum 8 Security Groups per Maestro Hyperscale Orchestrator
- **Appliance Mobility**: SGMs can move between Security Groups but not simultaneous membership

## Traffic Distribution Architecture

### Load Sharing Mechanisms
- **Distribution Mode**: Traffic distributed according to Security Group configuration
- **Performance Scaling**: Each SGM contributes processing capacity to group total
- **Automatic Balancing**: Traffic automatically distributed across available SGMs
- **Failure Handling**: Automatic redistribution when SGMs become unavailable

### Processing Coordination
- **State Synchronization**: Security state synchronized across all SGMs via HyperSync
- **Connection Consistency**: Session state maintained for proper traffic handling
- **Policy Enforcement**: Identical security policy enforcement across all SGMs
- **Flow Management**: Connection tracking coordinated across Security Group

## SGM Redundancy and High Availability

### Individual SGM Management
- **Independent Upgrades**: SGMs can be upgraded individually without group downtime
- **Maintenance Mode**: Individual SGMs can be taken offline for maintenance
- **Health Monitoring**: Per-SGM health monitoring and performance tracking
- **Failure Recovery**: Automatic handling of individual SGM failures

### Mixed Appliance Support
- **Appliance Types**: Different Check Point appliance models supported in same Security Group (R81.10+)
- **Certified Combinations**: Specific appliance combinations validated (reference sk162373)
- **Performance Optimization**: Load balancing accounts for different appliance capabilities
- **Hardware Flexibility**: Allows deployment flexibility for enterprise requirements

## Connectivity Requirements

### Downlink Architecture
- **Dual Orchestrator Requirement**: Each SGM requires downlink to both MHOs for Active state
- **Automatic Bonding**: Multiple cables automatically bond without manual configuration
- **Distance Support**: Up to 300m short range, 10km long range with appropriate transceivers
- **Failure Handling**: SGM placed in Down state if connectivity to either orchestrator lost

### Network Integration
- **Uplink Sharing**: SGMs share uplink connectivity through orchestrator bonding
- **VLAN Support**: Support for VLAN interfaces and network segmentation
- **Routing Integration**: Participates in dynamic routing protocols through Security Group
- **Network Services**: Provides standard network services within Security Group context

## Management and Monitoring

### Individual SGM Visibility
- **Performance Monitoring**: Same monitoring tools as standalone Scalable Platforms
- **Load Tracking**: Individual SGM load and performance metrics available
- **Health Status**: Per-SGM health and operational status monitoring
- **Diagnostic Access**: Individual SGM diagnostic and troubleshooting capabilities

### Configuration Management
- **Unified Configuration**: All SGMs share identical configuration through SMO
- **Software Synchronization**: Software versions and hotfixes synchronized across group
- **Policy Distribution**: Security policy automatically distributed to all SGMs
- **State Consistency**: Operational state maintained consistently across all members

## Research Context

Security Gateway Module architecture from sk147853 (Maestro FAQ). Provides distributed security processing foundation for Check Point Maestro enterprise scaling solutions.

## Connection Potential

Links to ClusterXL member architectures, Check Point appliance configurations, and distributed security processing frameworks across Check Point scalability documentation.