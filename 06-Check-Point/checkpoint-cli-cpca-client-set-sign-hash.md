---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: "Check Point CLI command extraction from administrative foundation guide"
validation-status: verified
source: "Check Point CLI Reference Guide R81.20"
domain: "Certificate Authority Management"
---

# Check Point CLI Command cpca_client set_sign_hash

## Core Concept

Sets the hash algorithm that the CA uses to sign file hashes in Check Point Certificate Authority. Supports SHA-1, SHA-256, SHA-384, and SHA-512 algorithms with SHA-256 as the default.

## Syntax and Parameters

```bash
cpca_client [-d] set_sign_hash {sha1 | sha256 | sha384 | sha512}
```

**Parameters:**
- `-d`: Debug mode (redirect output to file recommended)
- Hash algorithms: sha1, sha256 (default), sha384, sha512

## Multi-Domain Server Context

On Multi-Domain Server, must run in Domain Management Server context:
```bash
mdsenv <IP Address or Name of Domain Management Server>
```

## Required Service Restart

After hash algorithm change:

**Security Management Server:**
1. `cpstop`
2. `cpstart`

**Multi-Domain Server:**
1. `mdsstop_customer <Name or IP Address of Domain Management Server>`
2. `mdsstart_customer <Name or IP Address of Domain Management Server>`

## Compatibility Notes

- SHA-256 not supported in Check Point gateways prior to R71
- Not supported on older clients and SO80 R71
- Configuration change requires confirmation prompt

## Connection Potential

Links to:
- Certificate Authority management concepts
- Check Point service management procedures
- Multi-Domain Server administration
- Security hash algorithm standards
- PKI infrastructure configuration