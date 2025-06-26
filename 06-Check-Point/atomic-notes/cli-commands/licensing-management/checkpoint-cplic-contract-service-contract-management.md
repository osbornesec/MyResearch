---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: pki
source-lines: 278-320
---

# CheckPoint cplic contract - Service Contract Management

## Command Purpose
Manages CheckPoint Service Contract installation and deletion on local CheckPoint computers, handling service entitlement validation.

## Syntax Pattern
```bash
cplic [-d] contract {del <Service Contract ID> | put [-o|-overwrite] <Service Contract File>}
```

## Key Parameters
- `del <Service Contract ID>`: Remove service contract by ID
- `put <Service Contract File>`: Install service contract from file
- `-o|-overwrite`: Overwrite existing service contract

## Security Context
Service contracts control access to CheckPoint support services and updates. Critical for maintaining security patch access and technical support entitlements that affect certificate validation and PKI infrastructure updates.

## File Management
- **Storage Location**: `$CPDIR/conf/cp.contract`
- **Source**: Downloaded from CheckPoint User Center account
- **Repository Update**: Managed gateways require license repository synchronization

## Connection Targets
- Support service entitlement validation
- Security update access control
- PKI infrastructure maintenance support
- Multi-Domain Server contract management