---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 Remote Access VPN connectivity
validation-status: verified
source: "Check Point R81.20 Remote Access VPN Administration Guide"
domain: "Security Gateway VPN"
---

# Remote Access VPN Encrypted Tunnel Architecture

## Core Concept
Remote Access VPN creates an encrypted tunnel between a Security Gateway and remote access clients, enabling authenticated remote users to securely access an organization's internal network resources from physically remote sites.

## Technical Implementation
- **Protocol Foundation**: Uses IPsec standard for encryption and IKE (Internet Key Exchange) for key management
- **Connection Model**: Point-to-site topology connecting individual clients to corporate gateway
- **Authentication Flow**: IKE negotiation establishes peer identity verification before tunnel creation
- **Traffic Protection**: All connections between client and VPN domain are encrypted inside the tunnel

## Security Guarantees
- **Authenticity**: Standard authentication methods verify peer identities
- **Privacy**: All VPN data encrypted during transmission
- **Integrity**: Industry-standard integrity assurance prevents tampering

## Check Point R81.20 Context
- Configured through SmartConsole for gateway and policy management
- Supports multiple client types including Endpoint Security VPN, SSL Network Extender, and Capsule clients
- Integrates with Remote Access VPN Communities for user group management

## Foundation Integration
- **Gateway Dependency**: Requires Security Gateway with IPsec VPN Software Blade enabled
- **Identity Integration**: Leverages user authentication systems (LDAP, Active Directory, local users)
- **Routing Coordination**: Works with VPN domains and topology information for traffic flow