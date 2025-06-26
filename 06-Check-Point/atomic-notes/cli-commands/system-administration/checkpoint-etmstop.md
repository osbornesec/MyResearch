---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-security-operations
validation-status: verified
connections: 3
review-frequency: monthly
---

# Check Point ETM Stop Command

## Core Concept
The `etmstop` command terminates the External Trust Management (ETM) daemon on Check Point security gateways, stopping the service responsible for communicating with external certificate authorities and trust validation services.

## Technical Implementation
```bash
# Stop ETM daemon
etmstop

# Verify ETM daemon status
ps aux | grep etm
```

## Use Cases
- **Certificate Authority Integration Troubleshooting**: Stop ETM when resolving CA communication issues
- **Trust Service Maintenance**: Controlled shutdown before system maintenance
- **Performance Debugging**: Isolate ETM impact on gateway performance
- **Security Policy Testing**: Validate behavior without external trust validation

## Operational Context
- **Service Dependencies**: ETM integrates with certificate validation workflows
- **Performance Impact**: Stopping ETM may affect certificate-based authentication
- **Restart Requirement**: Use `etmstart` to resume external trust management services
- **Logging**: ETM stop events are recorded in system logs for audit trails

## Connection Potential
- Links to certificate authority management procedures
- Connects to Check Point daemon management workflows
- Related to trust validation and PKI operations
- Associates with security gateway troubleshooting methodologies