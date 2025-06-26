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

# Check Point CLI Command cpca_create

## Core Concept

Creates a new Check Point Internal Certificate Authority database, establishing the foundational PKI infrastructure for the security management environment.

## Syntax and Parameters

```bash
cpca_create [-d] -dn <CA DN>
```

**Parameters:**
- `-d`: Debug mode (redirect output to file recommended)
- `-dn <CA DN>`: Specifies the Certificate Authority Distinguished Name

## Multi-Domain Server Context

On Multi-Domain Server, must run in Domain Management Server context:
```bash
mdsenv <IP Address or Name of Domain Management Server>
```

## Distinguished Name Requirements

The CA DN parameter specifies the Certificate Authority's distinguished name, which uniquely identifies the CA within the PKI infrastructure and follows X.500 naming conventions.

## Use Cases

- Initial PKI setup for new Check Point deployment
- Re-creation of corrupted or damaged CA database
- Establishing separate CA instances in multi-domain environments
- PKI infrastructure recovery procedures

## Connection Potential

Links to:
- PKI infrastructure concepts
- X.500 distinguished name standards
- Check Point certificate management
- Multi-Domain Server configuration
- Internal Certificate Authority operations
- Security management server setup