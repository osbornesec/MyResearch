---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Remote Access VPN Identity Integration

## Core Concept
Remote Access identity source enables Identity Awareness Gateway to acquire identities from Mobile Access clients and IPsec VPN clients configured for Office Mode when they connect to the Security Gateway.

## Technical Requirements
- Identity Awareness Software Blade enabled on Security Gateway
- IPsec VPN Software Blade enabled on same Security Gateway
- Office Mode configuration for IPsec VPN clients
- Mobile Access client configuration

## Client Support
- **Mobile Access clients**: Managed and unmanaged device support
- **IPsec VPN clients**: Office Mode configured connections
- **Identity acquisition**: Automatic upon client connection to gateway

## Integration Benefits
- Seamless identity acquisition for remote users
- No additional client software required beyond VPN clients
- Automatic identity mapping upon VPN connection establishment
- Consistent identity enforcement for remote and local users

## Use Cases
- Remote employee access control
- Mobile device identity management
- VPN-based identity acquisition
- Distributed workforce security enforcement

## Operational Model
Identity obtained automatically when VPN clients establish connection, enabling immediate application of identity-based policies to remote access traffic.

## Research Context
Critical identity source for enterprises with significant remote access requirements and VPN-based connectivity.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to IPsec VPN Configuration, Mobile Access Management, Office Mode Configuration, Remote Access Security