---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint cprinstall cpstop Remote Service Stop Command

## Core Concept
The `cprinstall cpstop` command remotely stops CheckPoint services on managed Security Gateways from the Management Server, providing two modes of operation: maintaining active policy in kernel or completely unloading policy.

## Command Syntax
```bash
cprinstall cpstop {-proc | -nopolicy} <Object Name>
```

## Parameters
- **-proc**: Kills CheckPoint daemons and Security Servers while maintaining active Security Policy in the CheckPoint kernel. Rules with generic Allow, Drop, or Reject actions based on services continue to work.
- **-nopolicy**: Kills CheckPoint daemons and Security Servers AND unloads the Security Policy from the CheckPoint kernel.
- **<Object Name>**: The name of the Security Gateway object as configured in SmartConsole.

## Operational Requirements
- Must be executed from Expert mode
- On Multi-Domain Server, must run in context of applicable Domain Management Server using `mdsenv <IP Address or Name of Domain Management Server>`
- All CheckPoint products on managed Security Gateway must be same version

## Use Cases
- **Maintenance Operations**: Graceful service shutdown while preserving basic security rules (-proc)
- **Complete Service Stop**: Full shutdown including policy unload for major maintenance (-nopolicy)
- **Remote Management**: Centralized control of gateway services from management server

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential
- Links to CheckPoint remote management architecture
- Connects to CheckPoint service lifecycle management
- Related to CheckPoint Multi-Domain Server operations
- Associates with CheckPoint Security Policy management
- Links to CheckPoint kernel mode operations