---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
domain: checkpoint-security-management
---

# CheckPoint fwboot default Command - Default Filter Policy Loading

## Core Concept
The `fwboot default` command loads a specified Default Filter policy on a CheckPoint Security Gateway, providing basic security filtering capabilities during system initialization or emergency scenarios.

## Command Description
Loads the specified Default Filter policy file on the Security Gateway, enabling fundamental packet filtering functionality. This command is identical to the `fwboot fwdefault` command and must be executed from Expert mode.

## Syntax
```bash
[Expert@HostName:0]# $FWDIR/boot/fwboot default <Default Filter Policy File>
```

## Parameters
| Parameter | Description |
|-----------|-------------|
| No Parameters | Shows built-in help with available parameters |
| `<Default Filter Policy File>` | Specifies the full path and name of the Default Filter policy file<br>Default location: `$FWDIR/boot/default.bin` |

## Usage Context
- **Emergency Recovery**: Load basic filtering when main policy is unavailable
- **System Initialization**: Apply minimal security during boot process
- **Troubleshooting**: Isolate policy-related issues by reverting to default filtering
- **Maintenance Mode**: Provide basic protection during system maintenance

## Operational Requirements
- Must run from Expert mode
- Command execution survives system reboot
- Policy file must exist at specified path
- Suitable for emergency security scenarios

## Example Usage
```bash
[Expert@MyGW:0]# $FWDIR/boot/fwboot default $FWDIR/boot/default.bin
FW-1: Default filter installed successfully

[Expert@MyGW:0]# fw stat
HOST          POLICY         DATE
localhost     defaultfilter  135ep2018 14:27:23 : [>eth0] [<eth0]
```

## Connection Potential
- **Related Commands**: `fw defaultgen`, `fwboot bootconf`, `control_bootsec`, `comp_init_policy`
- **Policy Management**: Links to CheckPoint policy installation and management workflows
- **Emergency Procedures**: Connects to disaster recovery and troubleshooting methodologies
- **Boot Process**: Relates to CheckPoint system initialization and security hardening
- **Expert Mode Commands**: Part of advanced CheckPoint CLI administration toolkit