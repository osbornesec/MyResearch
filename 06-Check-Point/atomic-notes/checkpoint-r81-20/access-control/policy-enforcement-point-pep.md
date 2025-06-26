---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Policy Enforcement Point (PEP)

## Core Concept
PEP (Policy Enforcement Point) is a Check Point Identity Awareness Security Gateway role that receives identities via identity sharing from PDP gateways and redirects users to Captive Portal for authentication when needed.

## Primary Functions
- **Identity Reception**: Receives shared identity information from PDP gateways
- **Policy Enforcement**: Applies identity-based access control policies
- **User Redirection**: Redirects unidentified users to Captive Portal
- **Traffic Control**: Controls network access based on received identity data

## Technical Capabilities
- Consumes identity data from remote PDP sources
- Maintains shared identity session information
- Enforces access policies based on received identities
- Handles authentication failover through Captive Portal redirection

## Architectural Role
Distributed enforcement component in Identity Awareness environments where identity processing is centralized but enforcement is distributed across multiple network locations.

## Operational Benefits
- Localized policy enforcement
- Reduced identity processing overhead
- Consistent policy application across distributed infrastructure
- Seamless user experience with centralized identity management

## Integration Pattern
Works in conjunction with PDP gateways to create scalable identity-aware security architecture for enterprise environments.

## Research Context
Critical enforcement component for distributed Identity Awareness deployments requiring localized policy enforcement with centralized identity management.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Policy Decision Point, Identity Sharing Protocol, Captive Portal Redirection, Distributed Security Architecture