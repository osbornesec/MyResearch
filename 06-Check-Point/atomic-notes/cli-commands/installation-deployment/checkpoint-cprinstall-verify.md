---
state: fleeting
type: atomic-note
created: 2025-06-18
last-reviewed: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint cprinstall verify - Pre-Installation Compatibility Validation

## Core Concept

The `cprinstall verify` command performs comprehensive pre-installation validation to confirm whether a specific Check Point product can be successfully installed on a managed Security Gateway before attempting the actual installation.

## Command Functionality

Validates four critical installation prerequisites:
- **Product Compatibility**: Confirms if the specific product can be installed on the target Security Gateway
- **System Requirements**: Verifies that the operating system and currently installed products are appropriate for the software package
- **Disk Space**: Ensures sufficient disk space is available for the product installation
- **Network Connectivity**: Validates that there is a CPRID connection with the managed Security Gateway

## Command Syntax

```bash
cprinstall verify <Object Name> "<Vendor>" "<Product>" "<Major Version>" ["<Minor Version>"]
```

## Parameters

| Parameter | Description | Required |
|-----------|-------------|----------|
| `<Object Name>` | Name of Security Gateway object as configured in SmartConsole | Yes |
| `"<Vendor>"` | Package vendor (e.g., "checkpoint", "Check Point") | Yes |
| `"<Product>"` | Product name (e.g., "SVNfoundation", "firewall", "VPN-1 Power/UTM") | Yes |
| `"<Major Version>"` | Package major version (enclosed in quotes) | Yes |
| `"<Minor Version>"` | Package minor version (enclosed in quotes) | Optional |

## Usage Examples

**Successful Verification:**
```bash
{ExpertBROHT}# cprinstall verify MyDB "checkpoint" "SVNfoundation" "R75.20"
Verifying installation of SVNfoundation R75.20 on MyDB...
Info : Testing Check Point Gateway
Info : Test completed successfully.
Info : Installation Verified, The product can be installed.
```

**Failed Verification (Dependency Conflict):**
```bash
{ExpertBROHT}# cprinstall verify MyDB "checkpoint" "SVNfoundation" "R75.20"
Verifying installation of SVNfoundation R75.20 on MyDB...
Info : Testing Check Point Gateway
Info : ZDB Foundation R75 is already installed on 192.3.2.134
Operation Success. Product cannot be installed, did not pass dependency check.
```

## Operational Context

- **Prerequisite**: Must be executed from Expert mode
- **Multi-Domain Environment**: Run in context of applicable Domain Management Server using `mdsenv`
- **Automated Integration**: Automatically executed by `cprinstall install` and `cprinstall transfer` commands before package operations
- **Package Information**: Use `cppkg print` command to view package attribute values

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide (Official Documentation)
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential

Links to existing vault concepts:
- [[checkpoint-expert-mode-requirements]]
- [[checkpoint-cprinstall-install-command]]
- [[checkpoint-cppkg-print-command]]
- [[checkpoint-multi-domain-server-context]]
- [[checkpoint-cprid-connection-management]]
- [[checkpoint-package-dependency-management]]