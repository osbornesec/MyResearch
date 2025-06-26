---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: "Check Point CLI command extraction from administrative foundation guide"
validation-status: verified
source: "Check Point CLI Reference Guide R81.20"
domain: "System Configuration"
---

# Check Point CLI Command cpconfig

## Core Concept

Interactive configuration tool for Check Point products that provides menu-driven interface to configure specific settings for installed Check Point components.

## Syntax

```bash
cpconfig
```

Note: On Multi-Domain Server, use `mdsconfig` instead.

## Menu Options

1. **Licenses and contracts** - Manages Check Point licenses and contracts
2. **Administrator** - Configures Check Point system administrators
3. **GUI Clients** - Configures SmartConsole client connections
4. **SNMP Extension** - Obsolete (use Gaia Administration Guide instead)
5. **Random Pool** - Configures RSA keys for Gaia Operating System
6. **Certificate Authority** - Initializes ICA and configures CA FQDN
7. **Certificate's Fingerprint** - Shows ICA fingerprint for server verification
8. **Automatic start of Check Point Products** - Controls product auto-start
9. **Exit** - Exits configuration tool

## Multi-Domain Server Alternative

For Multi-Domain Server environments, use the `mdsconfig` command instead of `cpconfig`.

## Interactive Nature

Presents numbered menu options for selection, making it user-friendly for administrators who prefer menu-driven interfaces over command-line parameters.

## Connection Potential

Links to:
- Check Point system administration
- License management procedures
- Certificate Authority configuration
- Multi-Domain Server administration
- SmartConsole client management
- System startup configuration
- Interactive CLI tools concepts