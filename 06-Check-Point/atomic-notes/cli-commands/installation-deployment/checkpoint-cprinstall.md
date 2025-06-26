---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-reference-guide
validation-status: verified
domain: checkpoint-security-management
connections: 3
---

# checkpoint-cprinstall

## Core Concept

The `cprinstall` command is Check Point's centralized remote installation management tool that performs software package installation, lifecycle operations, and snapshot management on managed Security Gateways from the Security Management Server.

## Key Capabilities

**Primary Functions:**
- Remote installation and uninstallation of Check Point products
- Security Gateway lifecycle management (boot, start, stop, restart)
- Snapshot creation, management, and restoration
- Package transfer and verification operations
- System information gathering and database updates

**Sub-Commands:**
- `boot` - Reboots managed Security Gateway
- `install/uninstall` - Package management operations
- `snapshot/revert/show/delete` - Backup and restoration management
- `get` - Information gathering and database updates
- `verify` - Pre-installation validation and compatibility checks
- `transfer` - Package transfer without installation
- `cpstart/cpstop/cprestart` - Check Point service control

## Technical Requirements

**Prerequisites:**
- SmartUpdate license required
- Expert mode execution mandatory
- Check Point Remote Installation Daemon (cprid) must be running
- Multi-Domain Server context required for MDS environments

**Platform Limitations:**
- Software installation NOT supported on Gaia OS Security Gateways
- Snapshot operations limited to SecurePlatform OS only
- Version consistency required across all Check Point products

## Operational Context

**Management Architecture:**
- Centralized control from Security Management Server
- Remote execution on managed Security Gateways through cprid daemon
- Integration with SmartConsole object management
- Automatic validation and compatibility checking

**Use Cases:**
- Centralized software deployment across security infrastructure
- Disaster recovery through snapshot management
- System maintenance and lifecycle operations
- Package verification before deployment

## Connection Potential

Links to [[checkpoint-cprid-daemon]], [[checkpoint-smartupdate-licensing]], [[checkpoint-expert-mode-operations]], [[checkpoint-secureplatform-management]], [[checkpoint-gaia-os-limitations]]