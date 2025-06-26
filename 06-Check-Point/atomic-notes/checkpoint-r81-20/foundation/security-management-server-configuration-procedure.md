---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "To configure the Security Management Server in SmartConsole"
source-credibility: 9
management-domain: "serverconfig"
integration-points: ["software-blades", "policy-management", "endpoint-security", "logging-monitoring"]
---

# Security Management Server Configuration Procedure

## Core Management Concept
Security Management Server configuration involves locating the server object in Gateways & Servers view, accessing its properties, and enabling appropriate Software Blades including Network Policy Management, Endpoint Policy Management, Logging & Status, and specialized management functions.

## Administrative Context
This fundamental configuration procedure establishes the core capabilities of the Security Management Server by activating the specific software modules required for organizational security requirements and operational workflows.

## Implementation Details
- Locate Security Management Server object in Gateways & Servers view using search capabilities
- Access object properties through double-click to open configuration interface
- Enable Network Policy Management (automatically enabled) for comprehensive security policy
- Configure Endpoint Policy Management for client device security (cannot be disabled after enabling)
- Activate Logging & Status for security event monitoring and advanced visuals
- Enable Identity Logging for user identity integration with log entries
- Configure User Directory for LDAP server integration and user account population
- Set up Provisioning for centralized multi-appliance configuration management

## Integration Requirements
- Requires SmartConsole access for configuration interface
- Integrates with LDAP servers for user directory population
- Connects to Security Gateways for policy distribution and status monitoring
- Foundation for all centralized security management and policy enforcement workflows