---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Authentication Methods - RADIUS"
source-credibility: 9
management-domain: "authentication"
integration-points: ["radius-server", "external-authentication", "scalability", "udp-communication"]
---

# RADIUS Authentication Method

## Core Management Concept
RADIUS (Remote Authentication Dial-In User Service) provides external authentication through centralized servers that receive forwarded authentication requests from Security Gateways (for users) or Security Management Server (for administrators), using UDP communication and SmartConsole-defined server objects.

## Administrative Context
This enterprise-grade authentication method enables scalable user management by separating authentication functions from access servers, allowing centralized credential management and authentication policy enforcement across distributed security infrastructure.

## Implementation Details
- Security Gateways forward user authentication requests to RADIUS servers
- Security Management Server forwards administrator authentication requests to RADIUS servers
- RADIUS servers maintain centralized user account information and perform authentication
- Communication uses UDP protocol between gateways/management servers and RADIUS servers
- RADIUS servers and RADIUS server group objects configured in SmartConsole
- Provides security and scalability through centralized authentication architecture

## Integration Requirements
- Requires RADIUS server infrastructure for authentication processing
- Integrates with SmartConsole for RADIUS server object configuration
- Supports RADIUS server groups for redundancy and load distribution
- Foundation for enterprise-scale authentication and centralized user management workflows