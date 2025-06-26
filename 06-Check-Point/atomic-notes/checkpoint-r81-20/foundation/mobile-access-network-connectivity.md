---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Mobile Access to the Network"
source-credibility: 9
management-domain: "mobileaccess"
integration-points: ["https-authentication", "mobile-portal", "access-roles", "rule-base-integration"]
---

# Mobile Access Network Connectivity

## Core Management Concept
Check Point Mobile Access enables secure remote user connectivity through HTTPS requests to Mobile Access Security Gateway with secure authentication methods, providing mobile and remote workers access to internal applications, email, calendar, and contacts through Mobile Apps and Web Portal interfaces.

## Administrative Context
This remote access capability extends organizational security perimeter to mobile and remote workers, enabling secure connectivity to critical corporate resources while maintaining enterprise-grade security controls and authentication requirements for distributed workforce support.

## Implementation Details
- Standard HTTPS request initiation to Mobile Access Security Gateway
- Secure authentication through multiple authentication method support
- Mobile Access Portal provides clientless SSL VPN solution for web-based resources
- Check Point Mobile Apps enable secure encrypted communication from unmanaged devices
- Access includes internal applications, email systems, calendar, and contact services
- Rule Base integration through Mobile Application inclusion in Services & Applications column
- Access Roles creation for remote access clients in Source column rule specification

## Integration Requirements
- Requires Mobile Access Security Gateway for HTTPS request processing
- Integrates with authentication systems for secure user verification
- Supports Rule Base configuration for access control and policy enforcement
- Foundation for enterprise mobile workforce security and remote resource access workflows