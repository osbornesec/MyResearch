---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 VPN network scope definition
validation-status: verified
source: "Check Point R81.20 Site-to-Site VPN Administration Guide"
domain: "VPN Architecture"
---

# VPN Domain Encryption Scope Definition

## Core Concept
VPN Domain defines the collection of internal networks and computers that participate in encrypted VPN communication, establishing the encryption boundaries and scope for network resources protected by each Security Gateway.

## Network Scope Definition
- **Internal Network Collection**: VPN Domain encompasses specific internal networks behind Security Gateway
- **Computer Group Specification**: Individual computers and devices included in protected scope
- **Encryption Boundary**: Defines which traffic requires encryption vs. clear text transmission
- **Gateway Protection**: Security Gateway handles encryption/decryption for all VPN Domain members

## Resource Specification Methods
- **Network Objects**: Specific network subnets included in VPN Domain definition
- **Host Objects**: Individual computers explicitly included in encryption scope
- **Group Objects**: Predefined groups of networks and hosts for simplified management
- **Wildcard Definitions**: Pattern-based inclusion of network ranges and subnets

## Administrative Configuration
- **Topology Information**: VPN Domain can be based on gateway topology information
- **Manual Definition**: Explicit specification of networks and hosts in VPN Domain
- **All IP Addresses**: Option to include all networks behind gateway in encryption scope
- **Custom Scope**: Granular control over which resources participate in VPN

## Encryption Decision Logic
- **Traffic Analysis**: Gateway analyzes source and destination to determine encryption requirement
- **Domain Membership**: Traffic between VPN Domain members requires encryption
- **External Communication**: Traffic to/from external networks may bypass encryption
- **Policy Coordination**: VPN Domain scope coordinates with access control policies

## Inter-Domain Communication
- **Cross-Domain Traffic**: Communication between different VPN Domains through encrypted tunnels
- **Gateway Mediation**: Security Gateways handle encryption/decryption for cross-domain traffic
- **Resource Access**: VPN Domain members can access resources in other VPN Domains
- **Security Isolation**: VPN Domains provide security boundaries between network segments

## Community Integration
- **VPN Community Membership**: VPN Domains participate in VPN Communities for tunnel establishment
- **Shared Access**: Multiple VPN Domains can share access to common resources
- **Policy Inheritance**: VPN Domain settings inherited from VPN Community configuration
- **Topology Coordination**: VPN Domain definitions coordinate with community topology

## Performance Implications
- **Encryption Overhead**: All traffic within VPN Domain scope subject to encryption processing
- **Bandwidth Impact**: Encrypted traffic consumes additional bandwidth for encryption headers
- **Processing Load**: Gateway CPU load affected by VPN Domain scope and traffic volume
- **Scope Optimization**: Careful VPN Domain definition optimizes performance and security balance