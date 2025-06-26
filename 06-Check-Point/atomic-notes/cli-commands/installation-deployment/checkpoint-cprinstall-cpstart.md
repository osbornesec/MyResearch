---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-command-line-administration
validation-status: verified
connections: 3
review-frequency: monthly
---

# Check Point cprinstall cpstart Command

## Core Concept

The `cprinstall cpstart` command remotely executes the `cpstart` command on a managed Security Gateway from the Security Management Server, starting all Check Point processes and applications on the target gateway.

## Command Structure

**Syntax**: `cprinstall cpstart <Object Name>`

**Parameters**:
- `<Object Name>`: The name of the Security Gateway object as configured in SmartConsole

## Execution Requirements

- **Expert Mode**: Must be run from Expert mode on the Security Management Server
- **Multi-Domain Server Context**: On MDS, must run in the context of the applicable Domain Management Server
- **Version Compatibility**: All Check Point products on the managed Security Gateway must be of the same version

## Operational Context

This command provides centralized remote management capability, allowing administrators to start Check Point services on distributed Security Gateways without direct access to each device. It's part of the broader `cprinstall` command suite for remote gateway management.

## Example Usage

```bash
[Expert@MGMT:0]# cprinstall cpstart MyGW
```

## Connection Potential

- [[checkpoint-cpstart-local-command]] - Local equivalent command
- [[checkpoint-cprinstall-command-suite]] - Parent command framework
- [[checkpoint-remote-gateway-management]] - Broader management context