---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint fw ctl multik del_bypass_port - CoreXL Dynamic Dispatcher Port Removal

## Core Concept

The `fw ctl multik del_bypass_port` command removes specified TCP and UDP ports from the CoreXL Dynamic Dispatcher bypass port list, allowing these ports to be processed through normal CoreXL firewall instances instead of being bypassed.

## Command Syntax

```bash
fw ctl multik del_bypass_port <Port Number 1>,<Port Number 2>,..,<Port Number N>
```

### IPv6 Equivalent
```bash
fw6 ctl multik del_bypass_port <options>
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `<Port Number>` | Specifies the numbers of TCP and UDP ports to remove from the bypass list |

## Technical Details

- **Configuration Storage**: Changes are automatically saved to `$FWDIR/conf/dispatcher_bypass.conf`
- **Manual Editing Warning**: The configuration file must never be edited manually
- **Protocol Support**: Affects both TCP and UDP ports simultaneously
- **Dynamic Operation**: Changes take effect immediately without requiring restart

## Usage Context

- **Purpose**: Remove ports from CoreXL Dynamic Dispatcher bypass list
- **Effect**: Removed ports will be processed through normal CoreXL firewall instances
- **Use Case**: Performance tuning and traffic distribution optimization
- **Related Commands**: `add_bypass_port`, `show_bypass_ports`

## Configuration File Impact

The command modifies:
- `dynamic_dispatcher_bypass_ports_number` (decrements count)
- `dynamic_dispatcher_bypass_port_table` (removes specified ports)

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation
- **Technical Reference**: sk105261 (CoreXL Dynamic Dispatcher)

## Connection Potential

Links to existing vault concepts:
- CoreXL architecture and performance optimization
- CheckPoint CLI command patterns
- Network traffic distribution strategies
- Firewall performance tuning methodologies
- Dynamic dispatcher configuration management