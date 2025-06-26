---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: system-config
source-lines: 4289-4380
---

# CheckPoint fwm - Management Operations Framework

## Command Purpose
Comprehensive management operations framework providing database loading, certificate management, policy operations, and system verification functions.

## Syntax Pattern
```
fwm [-d] {dbload|exportcert|fetchfile|fingerprint|load|logexport|mds|sic_reset|ver} <options>
```

## Key Operations
- **dbload**: Download user database and network objects to gateways
- **exportcert/printcert**: SIC certificate management and verification
- **logexport**: Export security/audit logs to ASCII format
- **sic_reset**: Reset SIC on Management Server
- **ver**: Display CheckPoint version information
- **fingerprint**: Show CheckPoint fingerprint

## Multi-Domain Context
On Multi-Domain Server, commands must run in Domain Management Server context using mdsenv before execution.

## Obsolete Functions
- **load/verify**: Replaced by mgmt_cli in R80+ for policy operations
- **unload**: Legacy policy removal (use mgmt_cli instead)

## System Context
Central management command framework for administrative operations requiring privileged access to management infrastructure and security components.

## Connection Targets
- checkpoint-management-database-operations
- checkpoint-sic-certificate-management
- checkpoint-multi-domain-server-architecture