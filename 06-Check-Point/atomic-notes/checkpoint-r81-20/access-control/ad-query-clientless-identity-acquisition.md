---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# AD Query Clientless Identity Acquisition

## Core Concept
AD Query is a clientless identity acquisition tool based on Active Directory integration that extracts user and computer mapping to network addresses from Active Directory Security Event Logs using Windows Management Instrumentation (WMI).

## Technical Implementation
- Uses Windows Management Instrumentation (WMI) standard Microsoft protocol
- Identity Awareness Gateway communicates directly with AD domain controllers
- Queries Active Directory Security Event Logs for identity information
- Completely transparent to end users
- No installation required on clients or Active Directory servers

## Operation Process
1. Identity Awareness Gateway queries AD Security Event Logs
2. User authentication events generate security log entries
3. Gateway extracts user name (@domain), computer name, and source IP address
4. Identity mapping enables policy enforcement for network access

## Triggering Events
- User login authentication
- Screen unlock authentication
- Network drive sharing access
- Exchange email access
- Intranet portal usage
- Any resource access requiring AD authentication

## Technical Limitations
- **User/IP association timeout**: Sessions close after network inactivity period
- **Multiple users per IP**: Cannot detect logout events, allowing multiple active sessions
- **No logout detection**: AD cannot detect logout actions for automatic session cleanup

## Research Context
Primary clientless identity acquisition method for Active Directory environments requiring transparent user identification.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Active Directory Integration, WMI Protocol, Security Event Logs, Session Management, Network Authentication