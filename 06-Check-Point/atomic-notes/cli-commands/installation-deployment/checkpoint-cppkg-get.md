---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-reference-guide
validation-status: verified
domain: checkpoint-administration
---

# Checkpoint cppkg get Command

## Core Concept
The `cppkg get` command updates the list of SmartUpdate software packages in the SmartUpdate software packages repository based on the real content of the repository.

## Technical Details
- **Syntax**: `cppkg get` (no parameters required)
- **Mode Requirement**: Expert mode only
- **Multi-Domain Server**: Must run in MDS context (use `mdsenv` command first)
- **Function**: Synchronizes the package list with actual repository contents

## Usage Example
```bash
[Expert@MGMT:0]# cppkg get
Update successfully completed
[Expert@MGMT:0]#
```

## Operational Context
This command is part of the Check Point SmartUpdate package management system (`cppkg`), which manages software packages in the repository. The `get` operation specifically refreshes the repository's package index to reflect the current state of stored packages.

## Prerequisites
1. Expert mode access
2. For Multi-Domain Servers: MDS context (`mdsenv` command)
3. Access to SmartUpdate software packages repository

## Source Quality
- **Primary Source**: Check Point R81.20 CLI Reference Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from authoritative technical documentation

## Connection Potential
Related to other `cppkg` commands (add, delete, print, getroot, setroot) and Check Point SmartUpdate management workflows.