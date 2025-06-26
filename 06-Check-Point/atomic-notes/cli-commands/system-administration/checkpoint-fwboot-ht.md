---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
source: Check Point Admin Foundation CLI Guide R81.20
---

# CheckPoint fwboot ht Command - Obsolete HyperThreading Configuration

## Core Concept
The "fwboot ht" command is an obsolete CheckPoint CLI command that was previously used for configuring SMT (Simultaneous Multithreading) / HyperThreading features on Security Gateway systems. This command is no longer supported in current CheckPoint versions.

## Command Status
- **Status**: Obsolete and not supported
- **Alternative**: Follow sk93000 for SMT (HyperThreading) feature configuration
- **Syntax**: `$FWDIR/boot/fwboot ht <options>` (deprecated)
- **Location**: Part of the fwboot command family in $FWDIR/boot/

## Historical Context
- Previously used for hardware-level CPU threading configuration
- Part of the boot-time configuration system for Security Gateway initialization
- Replaced by more modern SMT configuration procedures documented in CheckPoint SK articles
- Related to CPU core utilization and performance optimization strategies

## Current Recommendation
Instead of using this obsolete command, administrators should:
- Reference CheckPoint Solution Knowledge (SK) article sk93000
- Use current SMT configuration methodologies
- Follow supported hardware configuration procedures
- Implement modern CPU optimization techniques

## Usage Context
- **Environment**: CheckPoint Security Gateway systems
- **Access Level**: Expert mode with administrative privileges
- **Configuration Scope**: System-level CPU threading configuration
- **Impact**: Hardware performance and resource utilization

## Connection Potential
Links to [[checkpoint-boot-time-configuration]], [[smt-hyperthreading-configuration]], [[cpu-performance-optimization]], [[checkpoint-obsolete-commands]], [[checkpoint-sk93000-smt-guide]]