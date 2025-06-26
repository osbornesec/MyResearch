---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint CLI Command cprinstall transfer - Software Package Transfer Without Installation

## Core Concept
The `cprinstall transfer` command transfers a software package from the repository to a managed Security Gateway without installing the package, enabling package staging for later installation.

## Command Syntax
```bash
cprinstall transfer <Object Name> "<Vendor>" "<Product>" "<Major Version>" "<Minor Version>"
```

## Parameters
- **Object Name**: The name of the Security Gateway object as configured in SmartConsole
- **"Vendor"**: Package vendor (enclosed in double quotes)
  - Examples: "checkpoint", "Check Point"
- **"Product"**: Product name (enclosed in double quotes)
  - Examples: "SVNfoundation", "firewall", "floodgate", "CP1100"
- **"Major Version"**: Package major version (enclosed in double quotes)
- **"Minor Version"**: Package minor version (enclosed in double quotes)

## Prerequisites and Notes
- Must be run from Expert mode
- On Multi-Domain Server: must run in context of applicable Domain Management Server using `mdsenv <IP Address or Name of Domain Management Server>`
- Use `cppkg print` command to see values for package attributes

## Primary Use Cases
- Stage software packages on Security Gateways before installation
- Prepare packages for offline or scheduled installation
- Test package transfer connectivity without committing to installation
- Distribute packages to multiple gateways for coordinated updates

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from processed technical documentation

## Connection Potential
- Links to other cprinstall commands (install, verify, get)
- Connects to CheckPoint package management workflow
- Related to Multi-Domain Server administration concepts
- Associated with Expert mode CLI operations