---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: pki
source-lines: 591-653
---

# CheckPoint cplic put - License Installation

## Command Purpose
Installs one or more Local licenses on CheckPoint computers with validation, selection, and overwrite capabilities.

## Syntax Pattern
```bash
cplic [-d] put [{-o|-overwrite}] [{-c|-check-only}] [{-s|-select}] 
[-F <Output File>] [{-P|-Pre-boot}] [{-k|-kernel-only}] -l <License File> 
[<Host>] [<Expiration Date>] [<Signature>] [<SKU/Features>]
```

## Key Parameters
- `-o|-overwrite`: Erase existing local licenses (preserves Central licenses)
- `-c|-check-only`: Validate license without installation
- `-s|-select`: Install only licenses matching local IP address
- `-P|-Pre-boot`: Use after upgrade, before reboot to prevent errors
- `-k|-kernel-only`: Push current valid licenses to kernel (Support only)
- `-l <License File>`: License file from CheckPoint User Center

## Security Context
Critical for establishing licensed security capabilities before activating certificate-based features. Pre-validation ensures proper cryptographic signature verification before license commitment to system.

## Validation Process
License verification includes IP address matching and signature validation to ensure authenticity and proper authorization for security feature activation.

## Connection Targets
- Local license deployment
- Certificate-based feature authorization
- Security capability activation
- Multi-gateway license distribution