---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cli-guide
validation-status: verified
connections: 3
review-frequency: monthly
---

# CheckPoint cplic get Command - License Repository Synchronization

## Core Concept

The `cplic get` command retrieves all licenses from managed Security Gateways and Cluster Members into the license repository on the Management Server, providing centralized license synchronization and management.

## Command Purpose

Synchronizes the license repository with the managed Security Gateways and Cluster Members by updating the repository with all local license changes from remote systems.

## Syntax Structure

```bash
cplic get {-h | -help}
cplic [-d] get
    -all
    <IP Address>
    <Host Name>
```

## Core Parameters

| Parameter | Function |
|-----------|----------|
| `-h` or `-help` | Shows built-in usage information |
| `-d` | Runs command in debug mode for troubleshooting |
| `-all` | Retrieves licenses from all Security Gateways and Cluster Members |
| `<IP Address>` | Retrieves from specific Security Gateway/Cluster Member by IP |
| `<Host Name>` | Retrieves from specific object as defined in SmartConsole |

## Operational Behavior

When executed, the command performs bidirectional license synchronization:
- **Retrieves** new licenses from managed devices
- **Removes** outdated licenses from the repository
- **Updates** the central license repository with current state

## Usage Context

- **Platform**: Management Server only
- **Access Level**: Expert mode or Gaia Clish
- **Network Requirement**: Connectivity to managed Security Gateways required

## Source Quality

- **Primary Source**: CheckPoint R81.20 CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential

Links to license management workflow, SmartUpdate integration, and centralized security policy management concepts.