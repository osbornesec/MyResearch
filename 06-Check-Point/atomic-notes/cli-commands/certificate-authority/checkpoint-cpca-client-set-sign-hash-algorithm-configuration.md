---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: certificate-authority
source-lines: 2-48
---

# CheckPoint cpca_client set_sign_hash - Hash Algorithm Configuration

## Command Purpose
Sets the hash algorithm that the Internal Certificate Authority uses to sign file hashes, supporting SHA-1, SHA-256, SHA-384, and SHA-512 algorithms.

## Syntax Pattern
```bash
cpca_client [-d] set_sign_hash {sha1 | sha256 | sha384 | sha512}
```

## Key Parameters
- `-d`: Debug mode execution (redirect output to file recommended)
- `{sha1|sha256|sha384|sha512}`: Hash algorithm selection (SHA-256 is default)

## Security Context
Critical for PKI security configuration. SHA-256 and higher provide stronger cryptographic protection but may not be supported on older CheckPoint gateways (pre-R71) and clients. Requires service restart to take effect.

## Service Restart Requirements
- Security Management Server: `cpstop; cpstart`
- Multi-Domain Server: `mdsstop_customer <DMS>; mdsstart_customer <DMS>`

## Connection Targets
- Internal Certificate Authority configuration
- Multi-Domain Server certificate management
- CheckPoint gateway compatibility requirements
- PKI cryptographic standards compliance