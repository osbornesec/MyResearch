---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Access Role Object Definition

## Core Concept
Access Role objects are SmartConsole configuration objects that combine multiple identity and network elements (networks, users, computers, remote access clients) into a single object for policy rule configuration.

## Object Components
Access Role objects include one or more of these elements:
- Networks and network locations
- Users and user groups
- Computers and computer groups  
- Remote Access Clients

## Policy Integration
- Used as source or destination parameters in Access Control Policy rules
- Enables complex identity-based access control scenarios
- Simplifies policy management through object aggregation
- Supports role-based network access patterns

## Configuration Context
- Configured in SmartConsole after Identity Awareness Software Blade activation
- Requires Identity Sources configuration for user/computer identification
- Integrates with Access Control Policy framework

## Use Case Example
IT Department and Sales Department roles configured to share files over FTP, combining user groups with specific network access permissions.

## Research Context
Key configuration object that translates identity concepts into enforceable network security policies.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Identity Awareness Configuration, Access Control Policy Rules, User Group Management, Network Object Framework