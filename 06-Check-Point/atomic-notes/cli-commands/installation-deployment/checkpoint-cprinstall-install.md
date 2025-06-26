---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-administration
validation-status: verified
---

# CheckPoint cprinstall install - Remote Product Installation Command

## Core Concept

The `cprinstall install` command installs Check Point products on managed Security Gateways remotely from the Security Management Server. This command provides centralized software deployment capabilities for Security Gateways running SecurePlatform OS only (not supported for Gaia OS).

## Command Syntax

```bash
cprinstall install [-boot] [-backup] [-skip_transfer] <Object Name> "<Vendor>" "<Product>" "<Major Version>" "<Minor Version>"
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-boot` | Reboots the managed Security Gateway after installation. Only reboots after ALL products have same version. |
| `-backup` | Creates snapshot on Security Gateway before installation (SecurePlatform OS only) |
| `-skip_transfer` | Skips the package transfer step |
| `<Object Name>` | Name of the managed Security Gateway object |
| `"<Vendor>"` | Package vendor (e.g., "checkpoint") - must be in quotes |
| `"<Product>"` | Product name (e.g., "firewall") - must be in quotes |
| `"<Major Version>"` | Major version identifier - must be in quotes |
| `"<Minor Version>"` | Minor version identifier - must be in quotes |

## Command Behavior

- Automatically runs `cprinstall verify` before package transfer
- Tests Check Point Gateway connectivity and compatibility
- Transfers package to target gateway
- Extracts and installs package
- Optionally creates backup and reboots system

## Usage Example

```bash
[Expert@MGMT]# cprinstall install -boot MyGW "checkpoint" "firewall" "R81.20" "R81.20.05"
Installing firewall R81.20.05 on MyGW...
Info : Testing Check Point Gateway
Info : Test completed successfully.
Info : Transferring Package to Check Point Gateway
Info : Extracting package on Check Point Gateway
Info : Installing package on Check Point Gateway
Info : Product was successfully applied.
Info : Rebooting the Check Point Gateway
Info : Checking boot status
Info : Reboot completed successfully.
```

## Important Limitations

- **NOT SUPPORTED** for Security Gateways running Gaia OS
- Only works with SecurePlatform OS managed gateways
- Requires CPRID connection between Management Server and Gateway
- Must have sufficient disk space on target gateway

## Research Context

This command is part of the cprinstall suite for remote Security Gateway management, enabling centralized software deployment and maintenance operations from the Security Management Server.

## Source Quality

- **Primary Source**: CheckPoint R81.20 CLI Reference Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential

Links to related CheckPoint CLI concepts:
- [[checkpoint-cprinstall-verify]] - Pre-installation validation
- [[checkpoint-cprinstall-backup]] - Snapshot creation
- [[checkpoint-cprinstall-transfer]] - Package transfer operations
- [[checkpoint-securexl-management]] - Gateway management concepts
- [[checkpoint-cprid-connectivity]] - Management connectivity requirements