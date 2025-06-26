---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-administration
validation-status: verified
---

# CheckPoint cprinstall uninstall Command - Product Removal from Security Gateway

## Core Concept

The `cprinstall uninstall` command removes Check Point products from managed Security Gateways running SecurePlatform OS. This command provides centralized software management capabilities for uninstalling specific product packages with version control.

## Command Syntax

```bash
cprinstall uninstall [-boot] <Object Name> "<Vendor>" "<Product>" "<Major Version>" "<Minor Version>"
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-boot` | Optional: Reboots the Security Gateway after uninstall (may be canceled in certain scenarios) |
| `<Object Name>` | Security Gateway object name as configured in SmartConsole |
| `"<Vendor>"` | Package vendor in quotes (e.g., "checkpoint", "Check Point") |
| `"<Product>"` | Product name in quotes (e.g., "SVNfoundation", "firewall", "floodgate", "CP1100") |
| `"<Major Version>"` | Package major version in quotes |
| `"<Minor Version>"` | Package minor version in quotes |

## Critical Limitations

- **Not supported for Gaia OS**: Command only works on SecurePlatform OS Security Gateways
- **Expert mode required**: Must be executed from Expert mode command line
- **Multi-Domain context**: On Multi-Domain Servers, must run within Domain Management Server context using `mdsenv`

## Operational Requirements

1. **Pre-execution**: Command automatically runs `cprinstall verify` before uninstalling
2. **Post-execution**: Must run `cprinstall get` command after successful uninstall
3. **Package information**: Use `cppkg print` command to view package attribute values
4. **Administrative access**: Requires Expert mode privileges

## Multi-Domain Server Usage

```bash
# Set domain context first
mdsenv <IP Address or Name of Domain Management Server>
# Then execute uninstall command
cprinstall uninstall [parameters]
```

## Research Context

Command enables centralized software lifecycle management for Check Point Security Gateways, providing controlled product removal capabilities with built-in verification and optional automatic reboot functionality.

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from authoritative technical documentation

## Connection Potential

Links to:
- CheckPoint SecurePlatform OS administration concepts
- Expert mode command execution patterns
- Multi-Domain Server context management
- Software package lifecycle management methodologies
- Security Gateway centralized administration frameworks