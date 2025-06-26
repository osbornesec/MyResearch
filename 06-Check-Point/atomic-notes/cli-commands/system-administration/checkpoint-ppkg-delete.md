---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint PPKG Delete Command - SmartUpdate Package Removal

## Core Concept
The `cppkg delete` (or `cppkg del`) command removes SmartUpdate software packages from the CheckPoint SmartUpdate software packages repository. This command provides both interactive and non-interactive modes for package removal operations.

## Command Syntax
```bash
cppkg del ["<Vendor>" "<Product>" "<Major Version>" "<OS>" "<Minor Version>"]
cppkg delete ["<Vendor>" "<Product>" "<Major Version>" "<OS>" "<Minor Version>"]
```

## Parameters
| Parameter | Description |
|-----------|-------------|
| `del` \| `delete` | Command accepts either short or long form. Without parameters, runs in interactive mode with menu options |
| `"<Vendor>"` | Package vendor name (must be enclosed in double quotes) |
| `"<Product>"` | Product name (must be enclosed in double quotes) |
| `"<Major Version>"` | Package major version (must be enclosed in double quotes) |
| `"<OS>"` | Target operating system (must be enclosed in double quotes) |
| `"<Minor Version>"` | Package minor version (must be enclosed in double quotes) |

## Usage Requirements
- **Expert Mode Only**: Command can only be executed in Expert mode
- **MDS Context**: On Multi-Domain Server, must run in MDS context using `mdsenv` command
- **Parameter Rule**: Must specify either all optional parameters or no parameters (all-or-nothing)
- **Parameter Discovery**: Use `cppkg print` command to see available parameter values

## Interactive Mode Example
```bash
[Expert@MGMT:0]# cppkg delete
Select package:
(0) Delete all
(1) CP1100 Gaia Embedded Check Point R77.20 R77.20
(e) Exit
Enter your choice : 1
You chose to delete 'CP1100 Gaia Embedded Check Point R77.20 R77.20', Is this correct? [y/n] : y
Package was successfully removed from the repository
[Expert@MGMT:0]#
```

## Source Quality
- **Primary Source**: CheckPoint R81.20 CLI Reference Guide (Official Documentation)
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
- [[checkpoint-cppkg-print]] - Command for viewing available packages before deletion
- [[checkpoint-cppkg-add]] - Complementary command for adding packages
- [[checkpoint-smartupdate-repository]] - Underlying system being managed
- [[checkpoint-expert-mode-commands]] - Command execution context requirements
- [[checkpoint-mds-context-commands]] - Multi-Domain Server command execution