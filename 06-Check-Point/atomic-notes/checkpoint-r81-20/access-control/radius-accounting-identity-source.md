---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# RADIUS Accounting Identity Source

## Core Concept
RADIUS Accounting (RFC 2866) enables Identity Awareness Gateway to acquire user and computer identities directly from RADIUS Accounting Clients, providing access control based on RADIUS authentication data.

## Technical Architecture
- Identity Awareness Gateway functions as RADIUS Accounting Server
- RADIUS server with Accounting Client sends RADIUS Accounting Requests
- LDAP server provides identity data for users to Identity Awareness Gateway
- Access Control rules applied based on RADIUS-derived identity information

## Data Flow Process
1. RADIUS Accounting Client generates accounting requests
2. RADIUS Accounting Server receives identity data from requests
3. Identity Awareness Gateway uses data to query LDAP server for user/device groups
4. Gateway applies configured Access Control rules to user traffic

## Integration Components
- RADIUS server with RADIUS Accounting Client enabled
- Identity Awareness Gateway as RADIUS Accounting Server
- LDAP server for identity data retrieval
- Network resources protected by identity-based policies

## Use Cases
- Remote access authentication integration
- Network access control based on RADIUS authentication
- Mobile device and laptop identity management
- Integration with existing RADIUS infrastructure

## Research Context
Standards-based identity acquisition method for environments with established RADIUS authentication infrastructure.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation, RFC 2866 reference

## Connection Potential
Links to RADIUS Protocol, LDAP Integration, Remote Access Authentication, Network Access Control, Standards-Based Identity