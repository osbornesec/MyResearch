---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 VPN Community topologies
validation-status: verified
source: "Check Point R81.20 Site-to-Site VPN Administration Guide"
domain: "VPN Communities"
---

# VPN Community Star and Mesh Topology Patterns

## Core Concept
VPN Communities organize multiple Security Gateways into structured topologies that define tunnel relationships, with Star topology creating hub-and-spoke patterns and Mesh topology enabling full interconnectivity between all participants.

## Star Topology Architecture
- **Hub-and-Spoke Model**: Central Security Gateway serves as hub with satellite gateways as spokes
- **Tunnel Limitation**: Satellite gateways create tunnels only to central hub, not to other satellites
- **Traffic Routing**: Inter-satellite communication routes through central Security Gateway
- **Scalability Pattern**: Efficient for many sites requiring centralized connectivity control

## Mesh Topology Architecture
- **Full Interconnectivity**: VPN tunnels established between each pair of Security Gateways
- **Direct Communication**: Any gateway can communicate directly with any other gateway
- **Distributed Architecture**: No single point of failure or bottleneck for inter-site communication
- **Performance Optimization**: Optimal routing paths between sites without hub relay

## Community Collection Structure
- **VPN Community Definition**: Named collection of VPN domains with shared tunnel attributes
- **Domain Grouping**: Each Security Gateway protects its associated VPN Domain
- **Secure Communication**: Network resources across different VPN Domains communicate through community tunnels
- **Attribute Sharing**: Common encryption, authentication, and policy settings across community

## Combination Topologies
- **Hybrid Deployments**: Single organization can implement both Star and Mesh communities simultaneously
- **Flexible Architecture**: Different connectivity patterns for different organizational requirements
- **Partner Integration**: External networks can participate in Star communities while internal sites use Mesh

## Topology Selection Criteria
- **Star Benefits**: Centralized control, simplified management, reduced tunnel count
- **Mesh Benefits**: Optimal performance, redundancy, distributed architecture
- **Resource Considerations**: Tunnel overhead scales differently between topologies
- **Security Requirements**: Different trust models and communication patterns

## Management Integration
- **SmartConsole Configuration**: Visual topology design and management through SmartConsole
- **Policy Inheritance**: Community-wide security policies and encryption settings
- **Gateway Membership**: Dynamic addition and removal of Security Gateways from communities