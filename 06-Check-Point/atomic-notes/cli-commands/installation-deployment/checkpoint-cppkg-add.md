---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cli
validation-status: verified
connections: 2
review-frequency: monthly
---

# Check Point cppkg add Command for SmartUpdate Package Repository Management

## Core Concept

The `cppkg add` command adds SmartUpdate software packages to the Check Point SmartUpdate software packages repository, enabling centralized management of firmware and software updates for Check Point appliances and security gateways.

## Command Syntax

```bash
cppkg add <Full Path to Package | DVD Drive [Product]>
```

## Critical Operational Requirements

- **Expert Mode Only**: Command requires Expert mode privileges for execution
- **Multi-Domain Context**: On Multi-Domain Servers, must run in MDS context using `mdsenv` command
- **No Overwrite Protection**: Command will not overwrite existing packages - existing packages must be deleted first
- **Package Source**: SmartUpdate packages obtained from Check Point Support Center

## Parameters

| Parameter | Function |
|---|---|
| `Full Path to Package` | Specifies complete local filesystem path to SmartUpdate software package |
| `DVD Drive [Product]` | Specifies DVD root path with optional product specification (e.g., `/mnt/CPR80`) |

## Use Cases

- Adding HFA (Hot Fix Accumulator) packages to repository
- Installing firmware updates for specific appliance models
- Centralized software package management for Multi-Domain environments
- Preparing packages for distribution across Check Point infrastructure

## Connection Potential

Links to: [[checkpoint-smartupdate-repository-management]], [[checkpoint-expert-mode-operations]], [[checkpoint-multidomain-server-context]], [[checkpoint-cppkg-delete]], [[checkpoint-package-management-workflow]]