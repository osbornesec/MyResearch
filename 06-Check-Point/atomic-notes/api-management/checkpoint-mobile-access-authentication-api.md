---
state: permanent
type: atomic-note
created: 2025-06-19
last-reviewed: 2025-06-19
connections: 6
review-frequency: monthly
source-credibility: 10
domain: check-point
---

# Checkpoint Mobile Access Authentication API

## Core Concept
Mobile Access Blade implements realm-based authentication framework with multi-factor authentication support and protection level-based authorization system, providing comprehensive API interfaces for authentication management.

## Authentication API Framework
- **Realm-Based APIs**: Structured authentication domain management interfaces
- **Multi-Factor APIs**: Multiple verification factor integration endpoints
- **User Source APIs**: Internal, LDAP/AD, and RADIUS user repository interfaces
- **Session Management APIs**: Authentication session lifecycle management

## Authorization API Architecture
- **User Group APIs**: Internal, LDAP/AD, and RADIUS group management
- **Protection Level APIs**: Dynamic authorization based on risk assessment
- **Resource Access APIs**: Endpoint security scan result integration
- **Risk Assessment APIs**: Authentication strength evaluation interfaces

## Security Integration APIs
- **Endpoint Security APIs**: On Demand (ESOD) compliance checking
- **Compliance Scanner APIs**: Integrated Compliance Scanner (ICS) interfaces
- **Risk-Based Access APIs**: Dynamic access control based on threat assessment
- **Multi-Factor Integration APIs**: External authentication provider integration

## API Authentication Methods
```json
{
  "realm_authentication": {
    "endpoint": "/api/v1/mobile-access/authentication/realm",
    "methods": ["POST", "GET", "PUT", "DELETE"],
    "authentication": "Bearer token required"
  },
  "multi_factor": {
    "endpoint": "/api/v1/mobile-access/authentication/mfa",
    "methods": ["POST", "GET"],
    "authentication": "Primary authentication + MFA token"
  },
  "user_groups": {
    "endpoint": "/api/v1/mobile-access/authorization/groups",
    "methods": ["GET", "PUT"],
    "authentication": "Administrative privileges required"
  }
}
```

## Protection Level Configuration
- **Risk-Based Access Control**: API-driven protection level assignment
- **Endpoint Compliance**: Real-time security scan integration
- **Authentication Strength**: Multi-factor requirement enforcement
- **Resource Protection**: Dynamic access policy application

## Connection Potential
- [[checkpoint-mobile-access-blade-enterprise-architecture]] - Overall mobile access framework
- [[api-authentication-patterns-index]] - General authentication API patterns
- [[oauth-2-authorization-flow-pattern]] - OAuth integration patterns
- [[jwt-token-security-pattern]] - Token security implementation
- [[checkpoint-identity-awareness-api]] - Identity awareness integration
- [[api-rate-limiting-strategy]] - Authentication API rate limiting

## Implementation Guidelines
**Authentication Flow**: Realm → Multi-Factor → Authorization → Resource Access  
**API Response**: JSON format with detailed error codes and descriptions  
**Security Requirements**: HTTPS mandatory, token-based authentication  
**Integration Standards**: RESTful design with OpenAPI specification support