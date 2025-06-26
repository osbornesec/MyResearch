---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Subscriber PDP Identity Reception

## Core Concept
Subscriber PDP is an Identity Awareness Security Gateway that receives identity information from remote PDPs through secure HTTPS connections, acting as the passive recipient in identity sharing architectures.

## Operational Process
1. **SSL Certificate Presentation**: Presents configured SSL certificate to Publisher PDP
2. **Authentication Verification**: Validates connection and certificate credentials
3. **Pre-shared Secret Validation**: Verifies pre-shared secret in received POST requests
4. **Identity Data Reception**: Receives user, machine, and Access Role information
5. **Local Identity Integration**: Integrates received identities into local policy enforcement

## Security Framework
- SSL certificate-based mutual authentication
- Pre-shared secret validation for request authenticity
- Secure HTTPS transport for identity data reception
- Certificate-based trust establishment

## Received Data Elements
- Remote user identity information
- Remote machine/computer identity data
- Access Role assignments from remote systems
- Identity session state information

## Integration Benefits
- Access to remote identity sources without direct connection
- Centralized identity collection with distributed enforcement
- Reduced authentication infrastructure requirements
- Scalable identity federation across security gateways

## Research Context
Essential component for distributed identity architectures requiring passive consumption of remote identity information for local policy enforcement.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Publisher PDP, Identity Federation, Certificate Authentication, Distributed Identity Architecture