---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Authentication Methods - Check Point Password"
source-credibility: 9
management-domain: "authentication"
integration-points: ["smartconsole", "local-database", "password-management", "credential-storage"]
---

# Check Point Password Authentication Method

## Core Management Concept
Check Point password authentication uses static passwords configured in SmartConsole with administrator passwords stored in the Security Management Server local database and user passwords stored in the Security Gateway local database, requiring no additional software.

## Administrative Context
This built-in authentication method provides immediate operational capability without external dependencies, enabling rapid deployment of security infrastructure while maintaining local control over credential management and authentication policies.

## Implementation Details
- Static password configuration managed through SmartConsole interface
- Administrator passwords stored locally on Security Management Server database
- User passwords maintained in local database on individual Security Gateways
- No additional software or external systems required for operation
- Direct integration with Check Point management and enforcement infrastructure
- Immediate availability upon system installation and configuration

## Integration Requirements
- Configured through SmartConsole password management interface
- Integrates with Security Management Server for administrator credential storage
- Connects to Security Gateway local databases for user credential management
- Foundation for basic authentication workflows and rapid deployment scenarios