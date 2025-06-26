---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 VPN connectivity modes
validation-status: verified
source: "Check Point R81.20 Remote Access VPN Administration Guide"
domain: "VPN Connectivity"
---

# Office Mode IP Address Assignment Pattern

## Core Concept
Office Mode solves routing problems for remote VPN clients by assigning internal network IP addresses to remote users, enabling them to operate as if physically connected to the corporate office network.

## Technical Mechanism
- **IP Encapsulation**: Encapsulates remote client IP packets with available internal network IP addresses
- **Routing Solution**: Resolves conflicts when remote clients have unknown, non-routable, or conflicting IP addresses
- **Transparent Operation**: Remote users send traffic without VPN-specific routing configuration

## Common Use Cases
- Remote clients connected through hotel LANs with internal IP address conflicts
- Users with unknown or dynamic IP addresses from local ISPs
- Situations requiring protocols not supported by traditional VPN routing

## Configuration Options
- **User Scope**: Can be enabled for all users or restricted to specific user groups
- **Assignment Methods**: Multiple Office Mode methods available for IP allocation
- **Interface Support**: Configurable on selected or all gateway interfaces

## Client Support
- Endpoint Security VPN clients
- SSL Network Extender
- Traditional IPsec clients (Crypto, L2TP)

## Integration Points
- **Gateway Configuration**: Requires Security Gateway Office Mode enablement
- **Community Management**: Integrates with Remote Access VPN Community settings
- **User Authentication**: Works with existing user group definitions and policies