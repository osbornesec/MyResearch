---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Managing User and Administrator Accounts"
source-credibility: 9
management-domain: "authentication"
integration-points: ["security-gateways", "security-management-server", "user-database", "ldap-integration"]
---

# User Administrator Authentication Framework

## Core Management Concept
Check Point implements differentiated authentication where Security Gateways authenticate end users and the Security Management Server authenticates administrators, supporting multiple authentication methods with all requiring username and password credentials stored in either Check Point User Database or LDAP servers.

## Administrative Context
This fundamental authentication architecture separates user access control from administrative access control, enabling appropriate security boundaries between operational user authentication at enforcement points and administrative authentication at management control points.

## Implementation Details
- Security Gateways handle individual user authentication for network access
- Security Management Server manages administrator authentication for management access
- All authentication methods require username and password credential pairs
- Support for Check Point User Database storage for local authentication
- Integration with LDAP servers for enterprise user directory authentication
- Clear separation of authentication domains for security boundary enforcement

## Integration Requirements
- Integrates with Security Gateway enforcement points for user authentication
- Connects to Security Management Server for administrator verification
- Supports User Database and LDAP server integration for credential storage
- Foundation for all user access control and administrative security workflows