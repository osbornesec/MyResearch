---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Identity Broker PDP Communication

## Core Concept
Identity Broker is an Identity Sharing mechanism between Identity Servers (PDPs) that provides a Web-API-based communication channel and identity session management capabilities between multiple PDPs.

## Communication Framework
- **Web-API Based Channel**: RESTful communication between PDP gateways
- **Bidirectional Communication**: Enables identity sharing in both directions
- **Session Management**: Add, remove, and update identity session capabilities
- **Distributed Architecture**: Connects multiple Identity Awareness Gateways

## Identity Sharing Capabilities
- **Add Identity Sessions**: Create new identity mappings across PDPs
- **Remove Identity Sessions**: Revoke or expire identity mappings
- **Update Identity Sessions**: Modify existing identity session information
- **Session Synchronization**: Maintain consistent identity state across gateways

## Technical Benefits
- **Scalable Identity Distribution**: Share identities across enterprise infrastructure
- **Reduced Authentication Load**: Distribute identity processing across multiple gateways
- **Centralized Identity Management**: Single identity acquisition with distributed enforcement
- **High Availability**: Redundant identity services through distributed architecture

## Use Cases
- Large enterprise environments with multiple security gateways
- Distributed network architectures requiring identity federation
- High availability identity services
- Centralized identity acquisition with distributed enforcement

## Research Context
Essential architecture component for enterprise-scale Identity Awareness deployments requiring coordinated identity sharing across multiple security gateways.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Publisher PDP, Subscriber PDP, Web API Integration, Distributed Identity Architecture, Enterprise Identity Federation