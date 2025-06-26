---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-reference
validation-status: verified
connections: 3
review-frequency: monthly
---

# CheckPoint cppkg print Command

## Core Concept
The `cppkg print` command displays the complete list of SmartUpdate software packages currently stored in the SmartUpdate software packages repository on a CheckPoint management server.

## Command Syntax
```bash
cppkg print
```

## Execution Requirements
- **Expert mode access**: Command can only be executed in Expert mode
- **Multi-Domain Server context**: On MDS environments, must run in MDS context (use `mdsenv` command first)
- **No parameters**: Command takes no additional parameters or options

## Functional Purpose
- **Package inventory**: Provides comprehensive visibility into available software packages
- **Update management**: Essential for verifying package availability before installation operations
- **Repository validation**: Confirms repository contents and package attributes

## Integration Context
Referenced by multiple CheckPoint installation commands that require package attribute verification:
- `cprinstall install` operations reference this for package attributes
- `cprinstall transfer` commands use output for parameter validation
- `cppkg delete` operations rely on this for available package selection

## Connection Potential
- Links to `cprinstall` command family for software deployment
- Connects to CheckPoint repository management workflows
- Associates with Multi-Domain Server administration procedures