---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-security-administration
source-credibility: 9
research-context: checkpoint-diagnostic-commands
validation-status: verified
connections: 3
review-frequency: quarterly
---

# checkpoint-usrchk

## Core Concept
The `usrchk` command is a Check Point diagnostic utility that validates user authentication status and permissions for active connections and sessions on security gateways and management servers.

## Primary Functions
- **User Session Validation**: Verifies active user authentication states
- **Permission Verification**: Checks user access rights and role assignments
- **Authentication Troubleshooting**: Diagnoses identity awareness and user authentication issues
- **Session Monitoring**: Displays current user sessions and connection details

## Command Syntax
```bash
usrchk [options] [username]
usrchk -all                    # Check all active users
usrchk -user <username>        # Check specific user
usrchk -verbose               # Detailed output
usrchk -sessions              # Display session information
```

## Key Use Cases
1. **Identity Awareness Debugging**: Troubleshoot user identification failures
2. **Access Control Verification**: Validate role-based access permissions
3. **Session Management**: Monitor and verify active user sessions
4. **Authentication Auditing**: Review user authentication status for compliance

## Output Information
- User authentication status (authenticated/unauthenticated)
- Session start time and duration
- Source IP addresses and connection details
- Assigned user roles and group memberships
- Authentication method used (AD, LDAP, local)

## Integration Points
- **Identity Awareness**: Works with UserCheck portal and identity sources
- **Access Control**: Validates against configured access roles
- **Logging Systems**: Can be used with SmartLog for audit trails
- **Monitoring**: Integrates with SNMP and management reporting

## Operational Context
Essential for environments with identity-based security policies, particularly in organizations using role-based access control, guest networks, or compliance-required user tracking systems.

## Connection Potential
- [[checkpoint-identity-awareness-zero-trust-development]]
- [[checkpoint-suspicious-activity-monitoring-sam]]
- [[checkpoint-smartlog-distributed-query-multi-domain-capabilities]]