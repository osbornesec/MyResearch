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

# Check Point CLI Command cprid

## Core Concept

Manages the Check Point Remote Installation Daemon (cprid) used for remote upgrade and installation of Check Point products on managed Security Gateways.

## Daemon Operations

**Start Daemon:**
```bash
cprid_start
```

**Stop Daemon:**
```bash
cprid_stop
```

**Restart Daemon:**
```bash
run_cprid_restart
```

## Primary Purpose

Enables remote installation and upgrade operations from Management Server to Security Gateways in managed environments.

## Execution Requirements

- Expert mode only
- Multi-Domain Server: Must run in MDS context (`mdsenv`)

## Integration with Remote Operations

The cprid daemon is essential for:
- Remote software package installation
- Security Gateway upgrades
- Product deployment across managed infrastructure
- Maintenance operations on remote gateways

## Dependency Relationships

Required for `cprinstall` command operations and SmartUpdate functionality on managed Security Gateways.

## Service Architecture

Forms part of the Check Point remote management infrastructure alongside:
- cpd daemon (core Check Point daemon)
- SIC trust establishment
- Management Server connectivity

## Connection Potential

Links to:
- Remote installation procedures
- SmartUpdate operations
- Security Gateway management
- Check Point daemon management
- Multi-Domain Server administration
- Software deployment workflows
- Managed security infrastructure