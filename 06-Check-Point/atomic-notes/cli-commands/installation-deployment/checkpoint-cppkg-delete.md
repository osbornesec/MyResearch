---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-reference-guide
validation-status: verified
connections: 2
review-frequency: quarterly
---

# Checkpoint cppkg delete - SmartUpdate Package Removal Command

## Core Concept

The `cppkg delete` command removes SmartUpdate software packages from the SmartUpdate software packages repository in Check Point management systems.

## Command Syntax

```bash
cppkg del ["<Vendor>" "<Product>" "<Major Version>" "<OS>" "<Minor Version>"]
cppkg delete ["<Vendor>" "<Product>" "<Major Version>" "<OS>" "<Minor Version>"]
```

## Key Requirements

- **Expert Mode Only**: Command can only be executed in Expert mode
- **MDS Context**: On Multi-Domain Servers, must run in MDS context (use `mdsenv` command first)
- **Parameter Specification**: Must specify all optional parameters or no parameters (interactive mode)

## Usage Modes

### Interactive Mode
When no parameters specified, command enters interactive menu:
- Shows numbered list of available packages
- Option (0) to delete all packages
- Option (e) to exit
- Requires confirmation before deletion

### Manual Mode
Requires all five parameters in double quotes:
- Vendor name
- Product name
- Major Version
- Operating System
- Minor Version

## Example Usage

```bash
# Interactive mode
[Expert@MGMT:0]# cppkg delete
Select package:
(0) Delete all
(1) CP1100 Gaia Embedded Check Point R77.20 R77.20
(e) Exit
Enter your choice : 1
You chose to delete 'CP1100 Gaia Embedded Check Point R77.20 R77.20', Is this correct? [y/n] : y
Package was successfully removed from the repository
```

## Related Commands

- [[checkpoint-cppkg-print]] - View available packages before deletion
- [[checkpoint-cppkg-add]] - Add packages to repository
- [[checkpoint-mdsenv-command]] - Set MDS context for Multi-Domain environments

## Source Quality

- **Primary Source**: Check Point R81.20 CLI Reference Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from authoritative CLI reference