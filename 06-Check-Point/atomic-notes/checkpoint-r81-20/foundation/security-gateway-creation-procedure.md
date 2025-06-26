---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Managing Gateways - Creating a New Security Gateway"
source-credibility: 9
management-domain: "gatewaymanagement"
integration-points: ["smartconsole", "sic-communication", "platform-selection", "software-blades"]
---

# Security Gateway Creation Procedure

## Core Management Concept
Security Gateway creation involves defining gateway objects in SmartConsole through Classic Mode configuration including host identification, platform selection, SIC authentication with one-time password, topology retrieval, and Software Blade activation for policy enforcement capability.

## Administrative Context
This fundamental gateway deployment procedure establishes the enforcement infrastructure necessary for security policy implementation, ensuring proper communication channels and platform-specific configuration for effective distributed security management.

## Implementation Details
- Access through Gateways & Servers navigation toolbar and New Gateway selection
- Classic Mode configuration provides detailed gateway setup control
- Host Name and IPv4/IPv6 Address specification for gateway identification
- Platform selection requires correct Appliance model for successful policy installation
- One-time password authentication establishes SIC (Secure Internal Communication)
- Automatic trusted communication initialization for Small Office Appliance platforms
- Topology retrieval displays successfully configured gateway interfaces
- Platform section configuration includes Hardware, Version, and OS specification
- Software Blade selection enables specific security capabilities on gateway

## Integration Requirements
- Requires SmartConsole access for gateway object configuration
- Integrates with SIC framework for secure communication establishment
- Supports automatic information retrieval when trust is established
- Foundation for security policy installation and distributed enforcement workflows