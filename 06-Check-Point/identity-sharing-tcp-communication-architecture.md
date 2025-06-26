---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: maestro-identity-awareness-design
validation-status: verified
source: sk175587 - Identity Based Access Control and Threat Prevention - Design Guidelines - Quantum Maestro
---

# Identity Sharing TCP Communication Architecture

## Core Concept
Identity Sharing operates through TCP connections between PDP (Policy Decision Point) and PEP (Policy Enforcement Point) instances using specific ports and modes, requiring same Management Server control.

## TCP Communication Ports
- **PDP to PEP**: TCP port 15105
- **PEP to PDP**: TCP port 28581
- **IP binding**: Connections bound to Security Gateway object IP address
- **Management requirement**: Both PDP and PEP must be managed by same Management Server

## Identity Sharing Modes
- **Smart-Pull mode (default)**: Bidirectional TCP connections between PDP and PEP
- **Push mode**: Unidirectional connection from PDP to PEP only
- **Push mode behavior**: All identities known on PDP shared with PEP

## Network Configuration Requirements
- **IP address assignment**: Dedicated IP address may be required for Security Gateway interface
- **Routing considerations**: Network routing structure impacts connection establishment
- **Alternate IP configuration**: May require alternate IP address for Identity Awareness communication channel

## Maestro Integration Considerations
- **Distribution mode support**: Maestro Security Group distribution modes support both TCP connection types
- **Performance impact**: Regular Maestro scaling mechanism bypassed for forwarded connections
- **Architecture flexibility**: Supports dedicated PDP instances on separate Security Gateways

## Research Context
Critical communication infrastructure for enterprise identity management in scalable security platforms.

## Connection Potential
- Links to network routing and IP address management
- Connects to PDP/PEP deployment architecture patterns
- Related to Maestro load balancing and distribution mechanisms