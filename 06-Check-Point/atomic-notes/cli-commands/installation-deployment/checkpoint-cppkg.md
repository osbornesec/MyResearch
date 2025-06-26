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

# CheckPoint cppkg SmartUpdate Package Repository Management

## Core Concept

CheckPoint `cppkg` is a command-line utility that manages the SmartUpdate software packages repository on Security Management Servers, providing centralized package administration for security appliance firmware and software updates.

## Primary Functions

The `cppkg` command provides six core operations:
- **add**: Adds SmartUpdate software packages to repository
- **delete/del**: Removes packages from repository (interactive or manual)
- **get**: Updates package list based on actual repository content
- **getroot**: Displays current repository root directory path ($SUBOOT)
- **print**: Lists all packages currently in repository
- **setroot**: Configures repository root directory location

## Operating Requirements

- **Expert Mode Only**: All `cppkg` operations require Expert mode access
- **Multi-Domain Context**: On MDS deployments, must run in MDS context using `mdsenv`
- **Gaia OS Limitation**: SmartUpdate package installation not supported on Gaia OS Security Gateways
- **Package Source**: Software packages obtained from CheckPoint Support Center

## Repository Management Architecture

**Default Repository Path**: `/var/log/cpupgrade/suroot`

**Package Identification Format**: Vendor → Product → Major Version → OS → Minor Version

**Repository Operations**:
- Non-overwriting additions (existing packages must be deleted first)
- Interactive deletion with menu selection
- Automatic content synchronization with `get` command
- Flexible root directory relocation with content migration

## Operational Workflow Integration

The `cppkg` utility integrates with broader CheckPoint update management:
- **Package Transfer**: Works with `cprinstall transfer` for appliance deployment
- **Installation Management**: Coordinates with `cprinstall install` for firmware updates
- **Verification Integration**: Supports `cprinstall verify` for package validation
- **Environment Variables**: Updates $SUROOT in CheckPoint profile scripts

## Connection Potential

Links to CheckPoint management ecosystem, CLI administration patterns, and enterprise update management workflows.