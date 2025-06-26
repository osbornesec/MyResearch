---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: certificate-authority
source-lines: 50-71
---

# CheckPoint cpca_create - Certificate Authority Database Creation

## Command Purpose
Creates a new CheckPoint Internal Certificate Authority database with specified Distinguished Name (DN) configuration.

## Syntax Pattern
```bash
cpca_create [-d] -dn <CA DN>
```

## Key Parameters
- `-d`: Debug mode execution (redirect output to file recommended)
- `-dn <CA DN>`: Certificate Authority Distinguished Name specification

## Security Context
Fundamental PKI infrastructure command for establishing Internal Certificate Authority. Creates the root certificate database that will issue and manage all certificates within the CheckPoint security infrastructure.

## Multi-Domain Considerations
Must be executed within Domain Management Server context using:
```bash
mdsenv <IP Address or Name of Domain Management Server>
```

## Connection Targets
- PKI infrastructure establishment
- Certificate Authority Distinguished Name configuration
- Multi-Domain Server certificate management
- Root certificate database initialization