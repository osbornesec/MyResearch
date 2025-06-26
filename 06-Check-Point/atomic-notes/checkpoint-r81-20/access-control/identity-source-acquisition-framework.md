---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Identity Source Acquisition Framework

## Core Concept
Identity Sources determine how the Identity Awareness Security Gateway learns the user names and computers that generate network traffic, providing the foundation for identity-aware security policies.

## Identity Sources Classification
**Direct Gateway Integration:**
- Browser-Based Authentication (Captive Portal)
- AD Query (Active Directory seamless integration)
- RADIUS Accounting (direct from RADIUS client)
- Remote Access (VPN client integration)

**Client-Based Acquisition:**
- Identity Agents (endpoint computer clients)
- Terminal Servers (multi-user environment agents)
- Identity Collector (server-based collection clients)

**API-Based Integration:**
- Identity Web API (programmatic identity creation)

## Technical Requirements
- Must be enabled in Identity Awareness Security Gateway object
- Requires Identity Awareness page configuration
- Needs Access Control Policy installation
- Integration with existing authentication infrastructure

## Operational Model
Identity Sources provide the identity-to-IP mapping that enables Access Role objects to function in policy rules.

## Research Context
Fundamental architecture component that bridges authentication systems with network security enforcement.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Identity Awareness Configuration, Active Directory Integration, Authentication Methods, Access Control Policy