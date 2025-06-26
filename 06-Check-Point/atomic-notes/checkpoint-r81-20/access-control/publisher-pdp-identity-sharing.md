---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Publisher PDP Identity Sharing

## Core Concept
Publisher PDP is an Identity Awareness Security Gateway that acquires identities from identity sources or remote PDPs and actively shares identity information with remote PDPs through secure HTTPS connections.

## Operational Process
1. **HTTPS Connection Initiation**: Initiates HTTPS connection to Subscriber PDP for each identity
2. **Certificate Verification**: Verifies CN and OU in subject field of presented certificate
3. **CA Certificate Validation**: Ensures CA certificate matches pre-approved administrator certificate
4. **Revocation Check**: Verifies certificate is not revoked
5. **Identity Sharing**: Shares user, machine, and Access Role information via HTTP POST requests

## Security Framework
- SSL/TLS certificate-based authentication
- Certificate Authority validation
- Certificate revocation checking
- Pre-shared secret verification in POST requests
- Secure HTTPS transport for all identity data

## Shared Data Elements
- User identity information
- Machine/computer identity data
- Access Role assignments and permissions
- Identity session metadata

## Integration Pattern
Active component in Identity Broker architecture that pushes identity information to subscribing gateways for distributed identity awareness.

## Research Context
Critical component for enterprise identity sharing architectures requiring active distribution of identity information across multiple security gateways.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Subscriber PDP, Identity Broker Architecture, Certificate Management, Distributed Identity Systems