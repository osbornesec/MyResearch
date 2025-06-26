---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Authentication Methods - SecurID"
source-credibility: 9
management-domain: "authentication"
integration-points: ["rsa-authentication-manager", "token-authenticators", "two-factor-authentication", "api-integration"]
---

# SecurID Token Authentication Method

## Core Management Concept
SecurID provides two-factor authentication requiring users to possess token authenticators and supply PIN/password, with Security Gateways (for users) or Security Management Server (for administrators) forwarding requests to RSA Authentication Manager that validates time-synchronized one-time access codes.

## Administrative Context
This high-security authentication method implements strong two-factor authentication through hardware or software tokens that generate random, time-synchronized access codes, providing enterprise-grade security for critical system access with centralized token management.

## Implementation Details
- Requires user possession of token authenticator plus PIN or password knowledge
- Support for hardware tokens (key-ring or credit card-sized devices) and software tokens
- Tokens generate random, one-time access codes changing approximately every minute
- Security Gateways forward user authentication requests to RSA Authentication Manager
- Security Management Server forwards administrator requests to Authentication Manager
- Authentication Manager manages database of RSA users and assigned token associations
- Gateway and Management Server function as Authentication Manager agents
- Support for SDK-supported API and REST API authentication request transmission

## Integration Requirements
- Requires RSA Authentication Manager infrastructure for token validation
- Integrates with hardware and software token authenticator systems
- Supports SDK and REST API integration for authentication request processing
- Foundation for high-security two-factor authentication and enterprise token management workflows