---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-identity-awareness-forensics
validation-status: verified
source: Check Point Identity Awareness Administration Guide R81.20
---

# CheckPoint ADLog Query Identity Forensics Command

## Core Concept
ADLog Query is a forensic analysis command within Check Point's Identity Awareness suite that displays the database of user identities learned from Active Directory Security Event Logs, enabling real-time correlation between users, computers, and IP addresses for security investigations and auditing.

## Command Syntax Structure
```
adlog {a | l} query [all | ip <IP_Address> | machine <Computer_Name> | user <User_Name> | string <Text>]
```

## Filtering Parameters
- **all**: Displays complete identity database with all user-to-IP mappings
- **ip <IP_Address>**: Filters results for specific IP address associations  
- **machine <Computer_Name>**: Shows identity mappings by computer hostname
- **user <User_Name>**: Filters entries by Active Directory username
- **string <Text>**: Searches for arbitrary text within database entries

## Forensic Investigation Capabilities
- **User activity tracking**: Correlate network events with specific AD user accounts
- **IP address attribution**: Determine which user was assigned specific IP at given time
- **Login history analysis**: Examine historical user authentication patterns
- **Incident response support**: Rapid identity correlation during security investigations

## Technical Implementation
- **WMI-based extraction**: Queries AD Security Event Logs via Windows Management Instrumentation
- **Real-time processing**: Provides current identity mappings without client-side software
- **Transparent operation**: No additional configuration required on AD servers or workstations
- **Multi-platform access**: Available on both Security Gateways and Log Servers

## Operational Advantages
- Zero-footprint deployment with no agent requirements
- Immediate forensic data availability for incident response
- Granular filtering capabilities for targeted investigations
- Integration with Check Point's comprehensive logging framework

## Connection Potential
Links to [[checkpoint-identity-awareness-zero-trust-development]], [[checkpoint-fw-log-security-audit-analysis]], [[checkpoint-mgmt-cli]], [[digital-forensics-identity-correlation]]