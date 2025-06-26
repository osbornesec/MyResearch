---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-administrative-procedures
validation-status: verified
---

# Check Point Certificate Authority Management

## Core Concept
Check Point Internal Certificate Authority (ICA) provides centralized PKI management for Check Point security infrastructure, requiring proper initialization and hash algorithm configuration for secure certificate operations.

## Administrative Procedures
- **Creation**: Use `cpca_create` command to establish new CA database with Distinguished Name specification
- **Hash Configuration**: Set signing algorithm with `cpca_client set_sign_hash` (SHA-256 default, SHA-1/384/512 available)
- **Service Management**: Restart services after CA changes using `cpstop` and `cpstart` sequence
- **Multi-Domain Context**: Execute CA commands within appropriate Domain Management Server context using `mdsenv`

## Security Implications
- Hash algorithm selection affects gateway compatibility (SHA-256+ requires R71+)
- Certificate Authority distinguished name must be properly configured before operations
- Service restart required for hash algorithm changes to take effect
- Fingerprint verification essential for SmartConsole connection security

## Connection Potential
Links to security gateway configuration, Multi-Domain management, PKI infrastructure, and certificate-based authentication protocols.