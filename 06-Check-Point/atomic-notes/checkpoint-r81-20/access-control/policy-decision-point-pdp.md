---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Policy Decision Point (PDP)

## Core Concept
PDP (Policy Decision Point) is a Check Point Identity Awareness Security Gateway role that acquires identities from identity sources and shares identities with other gateways in a distributed identity architecture.

## Primary Functions
- **Identity Acquisition**: Directly obtains identities from configured identity sources
- **Identity Processing**: Processes and validates identity information
- **Identity Sharing**: Distributes identity information to other gateways
- **Policy Decision**: Makes identity-based access control decisions

## Technical Capabilities
- Connects to multiple identity sources simultaneously
- Processes identity data from various acquisition methods
- Maintains identity session information
- Coordinates with PEP gateways for distributed enforcement

## Architectural Role
Central identity processing component in distributed Identity Awareness environments where identity acquisition and enforcement are separated across multiple gateways.

## Operational Benefits
- Centralized identity processing
- Scalable identity distribution
- Reduced identity source load through centralization
- Consistent identity data across gateway infrastructure

## Research Context
Essential architectural component for enterprise-scale Identity Awareness deployments requiring centralized identity processing and distributed enforcement.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Policy Enforcement Point, Identity Sharing Architecture, Distributed Security Deployment, Identity Source Management