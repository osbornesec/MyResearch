---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint CLI fw showuptables Command - Unified Policy Kernel Table Display

## Core Concept
The `fw showuptables` command displays the formatted contents of CheckPoint's Unified Policy kernel tables, providing visibility into the runtime policy structures that govern security decisions.

## Command Syntax
```bash
fw [-d] showuptables [-h] [-i]
```

## Parameters
- **-d**: Runs command in debug mode for troubleshooting
  - Best practice: Redirect output to file or use script command
  - Use only when troubleshooting the command itself
- **-h**: Shows built-in usage information
- **-i**: Shows the implied rules layers

## Primary Function
Shows the formatted contents of the Unified Policy kernel tables that contain the active security policy rules and their runtime implementation details.

## Research Context
Essential for CheckPoint security policy debugging and verification, allowing administrators to examine how policies are implemented at the kernel level.

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 8/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from authoritative CheckPoint documentation

## Connection Potential
- Links to CheckPoint policy management and debugging workflows
- Connects with other fw commands (fw stat, fw tab, fw sam)
- Related to CheckPoint kernel architecture and policy enforcement
- Associated with CheckPoint troubleshooting methodologies
- Connected to CheckPoint Unified Policy architecture concepts