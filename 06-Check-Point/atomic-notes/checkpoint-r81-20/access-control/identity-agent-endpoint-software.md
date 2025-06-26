---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Identity Agent Endpoint Software

## Core Concept
Identity Agents are dedicated client software installed on user endpoint computers that acquire and report user and computer identities to the Identity Awareness Gateway, configured by administrators rather than end users.

## Agent Types
**Full Identity Agent:**
- Includes packet tagging and computer authentication
- Requires administrator permissions for installation
- Applies to all users on the computer
- Provides IP spoofing protection
- Supports computer authentication for Access Roles

**Light Identity Agent:**
- No packet tagging or computer authentication
- No administrator permissions required
- Individual user installation per computer
- User identification only through SSO

## Core Capabilities
- **User Identification**: SSO transparent authentication for AD domain users
- **Computer Identification**: Available with Full Agent through service installation
- **Seamless Connectivity**: Transparent Kerberos SSO authentication
- **IP Change Detection**: Automatic reconnection when endpoint IP changes
- **Packet Tagging**: Kerberos-based anti-spoofing protection (Full Agent only)

## Technical Specifications
- Installation file size: 7 MB for both types
- Installation time: Less than one minute
- Architecture: Resident application (Light) or application + service + driver (Full)

## Research Context
Primary endpoint-based identity acquisition method providing comprehensive user and computer authentication for managed environments.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Endpoint Security, Kerberos SSO, Computer Authentication, IP Spoofing Protection, Active Directory SSO