---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: certificate-authority
source-lines: 73-117
---

# CheckPoint cpconfig - Certificate Authority Initialization

## Command Purpose
Interactive configuration tool providing Certificate Authority initialization and FQDN configuration through menu option 6 "Certificate Authority".

## Syntax Pattern
```bash
cpconfig
```

## Key Parameters
Interactive menu selection:
- Option 6: Certificate Authority
- Option 7: Certificate's Fingerprint (displays ICA fingerprint)

## Security Context
Primary tool for Internal Certificate Authority (ICA) setup and configuration. Initializes ICA infrastructure and configures Certificate Authority's Fully Qualified Domain Name (FQDN) for proper certificate issuance.

## Certificate Fingerprint Function
Displays ICA's fingerprint - a text string derived from server's ICA certificate used to verify server identity during SmartConsole connections.

## Multi-Domain Alternative
For Multi-Domain Servers, use `mdsconfig` command instead of `cpconfig`.

## Connection Targets
- Internal Certificate Authority initialization
- Certificate fingerprint verification
- FQDN configuration for certificate issuance
- SmartConsole identity verification
- Multi-Domain Server certificate management