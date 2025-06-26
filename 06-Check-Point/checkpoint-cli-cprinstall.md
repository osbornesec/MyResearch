---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: "Check Point CLI command extraction from administrative foundation guide"
validation-status: verified
source: "Check Point CLI Reference Guide R81.20"
domain: "Remote Installation Management"
---

# Check Point CLI Command cprinstall

## Core Concept

Comprehensive remote installation tool for managing Check Point product packages and operations on managed Security Gateways, providing centralized deployment and maintenance capabilities.

## Primary Operations

```bash
cprinstall {boot|cprestart|cpstart|cpstop|delete|get|install|revert|show|snapshot|transfer|uninstall|verify} <options>
```

## Key Subcommands

- **boot**: Reboot managed Security Gateway
- **install**: Install Check Point products remotely
- **get**: Retrieve product details and update management database
- **snapshot**: Create backup on SecurePlatform OS
- **revert**: Restore from snapshot backup
- **transfer**: Move packages without installation
- **verify**: Confirm installation prerequisites

## Prerequisites

- SmartUpdate license required
- Expert mode execution only
- SIC Trust established between Management Server and Security Gateway
- cpd daemon running on remote gateway
- cprid daemon running on remote gateway

## Multi-Domain Server Context

Must run in applicable Domain Management Server context:
```bash
mdsenv <IP Address or Name of Domain Management Server>
```

## Platform Limitations

Not supported for Security Gateways running on Gaia OS - packages cannot be installed via this method.

## Remote Service Control

Provides remote execution of Check Point service commands:
- **cpstart**: Start Check Point services
- **cpstop**: Stop services (with -proc or -nopolicy options)
- **cprestart**: Restart Check Point services

## Snapshot Management

For SecurePlatform OS environments:
- Create, display, and delete backup snapshots
- Restore gateway configuration from snapshots
- Maintain multiple backup points

## Connection Potential

Links to:
- SmartUpdate licensing requirements
- Remote Security Gateway management
- Software deployment workflows
- Backup and recovery procedures
- Multi-Domain Server administration
- SIC trust relationships
- Check Point service management