---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Authentication Methods - TACACS"
source-credibility: 9
management-domain: "authentication"
integration-points: ["tacacs-server", "centralized-access-control", "encrypted-communication", "token-authentication"]
---

# TACACS Authentication Method

## Core Management Concept
TACACS (Terminal Access Controller Access Control System) provides centralized access control through external servers that receive forwarded authentication requests from Security Gateways (for users) or Security Management Server (for administrators), supporting token cards, Kerberos authentication, and encrypted communication.

## Administrative Context
This enterprise authentication method enables centralized verification services with advanced security features including physical card key devices, token card support, and comprehensive encryption of all authentication data for secure enterprise network access control.

## Implementation Details
- Security Gateways forward user authentication requests to TACACS servers
- Security Management Server forwards administrator authentication requests to TACACS servers
- TACACS server maintains centralized user account information for authentication
- Support for physical card key devices and token card authentication
- Kerberos secret key authentication integration for enhanced security
- Complete encryption of username, password, authentication services, and accounting information
- Secure communication protection for all authentication request data

## Integration Requirements
- Requires TACACS server infrastructure for centralized authentication processing
- Supports token card and physical authentication device integration
- Integrates with Kerberos authentication systems for enhanced security
- Foundation for high-security enterprise authentication and encrypted access control workflows