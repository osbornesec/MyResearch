---
state: permanent
type: atomic-note
created: 2025-06-17
domain: remote-access-vpn
source-credibility: 9
research-context: checkpoint-network-architecture
validation-status: verified
connections: 4
review-frequency: quarterly
---

# Check Point Office Mode IP Assignment Architecture

## Core Concept
Check Point Office Mode provides dynamic IP address assignment to remote VPN clients, making them appear as if they are physically connected to the corporate LAN by assigning internal network IP addresses and enabling seamless access to internal resources.

## IP Assignment Methods

### IP Pool Assignment
- **Static Pool Configuration**: Pre-defined range of IP addresses allocated to VPN clients
- **Dynamic Allocation**: Automatic assignment from available pool addresses
- **Lease Management**: IP address lease duration and renewal mechanisms
- **Anti-Spoofing Integration**: Automatic security policy updates for assigned addresses

### DHCP Server Integration
- **External DHCP**: Integration with existing corporate DHCP infrastructure
- **DHCP Relay**: Forward client requests to internal DHCP servers
- **Reservation Support**: Specific IP assignment based on user identity
- **Scope Management**: Separate DHCP scopes for VPN clients

### Source IP-Based Assignment
- **Deterministic Assignment**: Consistent IP allocation based on client source IP
- **User-Specific Addressing**: Individual IP addresses per authenticated user
- **ipassignment.conf Configuration**: File-based IP assignment rules

## Network Integration Benefits
- **LAN Emulation**: Remote clients appear as local network resources
- **Policy Simplification**: Standard internal security policies apply to VPN clients
- **Resource Access**: Seamless connectivity to internal servers and services
- **Name Resolution**: WINS and DNS integration for internal name resolution

## Connection Potential
- Links to [[checkpoint-remote-access-authentication-methods]]
- Connects to [[checkpoint-vpn-routing-hub-mode-architecture]]
- Relates to [[checkpoint-desktop-security-policy-enforcement]]
- Supports [[checkpoint-ssl-network-extender-integration]]

## Source Quality
- **Primary Source**: Check Point R81.20 Remote Access VPN Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation