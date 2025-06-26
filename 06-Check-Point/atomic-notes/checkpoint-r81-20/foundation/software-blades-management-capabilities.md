---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "To configure the Security Management Server - Software Blades"
source-credibility: 9
management-domain: "softwareblades"
integration-points: ["policy-management", "endpoint-security", "event-monitoring", "compliance", "provisioning"]
---

# Software Blades Management Capabilities

## Core Management Concept
Software Blades provide modular management capabilities including Network Policy Management, Endpoint Policy Management, Logging & Status, Identity Logging, User Directory, Provisioning, Compliance, SmartEvent Server, and SmartEvent Correlation Unit for comprehensive security infrastructure management.

## Administrative Context
This modular architecture enables administrators to activate specific management capabilities based on organizational requirements, ensuring optimal resource utilization while providing the exact functionality needed for effective security operations.

## Implementation Details
- Network Policy Management: Comprehensive unified security policy management (automatically enabled)
- Endpoint Policy Management: Client security management for computers and hand-held devices (permanent after enabling)
- Logging & Status: Advanced security event monitoring with visual data management
- Identity Logging: User identity integration from Active Directory domains
- User Directory: LDAP server integration for automated user account population
- Provisioning: Centralized configuration management for multiple appliances and servers
- Compliance: Regulatory requirement optimization and security setting compliance
- SmartEvent Server: Real-time security event management
- SmartEvent Correlation Unit: Real-time security event correlation and analysis

## Integration Requirements
- Configured through Security Management Server properties interface
- Integrates with Active Directory for identity management
- Connects to LDAP servers for user directory services
- Foundation for specialized management workflows and security operation center activities