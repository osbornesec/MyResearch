---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 Site-to-Site VPN connectivity
validation-status: verified
source: "Check Point R81.20 Site-to-Site VPN Administration Guide"
domain: "Site-to-Site VPN"
---

# Site-to-Site VPN Gateway-to-Gateway Tunnel Architecture

## Core Concept
Site-to-Site VPN creates encrypted tunnels between two Security Gateways at different geographical sites, enabling secure network-to-network communication through IKE negotiation and IPsec protocol implementation.

## Technical Foundation
- **Encrypted Tunnel Basis**: Foundation built on encrypted VPN tunnels between Security Gateway pairs
- **IKE Negotiation**: Security Gateways negotiate link parameters and establish VPN tunnels
- **Multiple Connections**: Single tunnel can contain multiple VPN connections for different traffic types
- **Concurrent Tunnels**: One Security Gateway can maintain multiple simultaneous VPN tunnels

## Network-to-Network Communication
- **Host-to-Host Security**: Enables secure data transmission between hosts on different internal networks
- **Gateway-Mediated Encryption**: Security Gateways handle encryption/decryption transparently to hosts
- **IPsec Protocol Implementation**: Uses IPsec standard for data encryption and authentication
- **Transparent Operation**: End hosts communicate normally while gateways provide security layer

## VPN Domain Architecture
- **Domain Definition**: VPN Domain encompasses collection of internal networks behind each Security Gateway
- **Resource Specification**: Administrators define which network resources participate in VPN communication
- **Gateway Protection**: Security Gateway handles encryption and protects all VPN Domain members
- **Cross-Domain Communication**: Different VPN Domains communicate securely through gateway-terminated tunnels

## Tunnel Guarantees
- **Authenticity**: Standard authentication methods verify gateway identities
- **Privacy**: All inter-site VPN data encrypted during transmission
- **Integrity**: Industry-standard integrity assurance prevents data tampering

## Foundation Integration
- **Gateway Dependency**: Requires Security Gateways with IPsec VPN Software Blade at both sites
- **Certificate Infrastructure**: Leverages Check Point ICA or external PKI for gateway authentication
- **Management Integration**: Configured and managed through SmartConsole and Security Management Server