---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint CoreXL Dynamic Dispatcher Bypass Ports Display Command

## Core Concept
The `fw ctl multik show_bypass_ports` command displays the TCP and UDP ports that are configured in the bypass port list of the CheckPoint CoreXL Dynamic Dispatcher, showing which ports bypass normal firewall processing for performance optimization.

## Command Syntax
```bash
fw ctl multik show_bypass_ports
```

## Technical Details
- **Purpose**: Shows ports configured to bypass CoreXL Dynamic Dispatcher processing
- **Configuration Source**: Reads from `$FWDIR/conf/dispatcher_bypass.conf` file
- **Related Commands**: Used with `fw ctl multik add_bypass_port` and `fw ctl multik del_bypass_port`
- **Maximum Ports**: Up to 10 bypass ports can be configured
- **Important**: Configuration file must not be edited manually - only through CLI commands

## Output Format
```
dynamic dispatcher bypass port list:
(port1,port2,port3)
```

## Usage Example
```bash
[Expert@MyGW:0]# fw ctl multik show_bypass_ports
dynamic dispatcher bypass port list:
(9999,8888)
[Expert@MyGW:0]#
```

## Configuration File Structure
When ports are configured, the `$FWDIR/conf/dispatcher_bypass.conf` file contains:
```
dynamic_dispatcher_bypass_ports_number = 2
dynamic_dispatcher_bypass_port_table=8888,9999
```

## Performance Context
- Part of CoreXL Dynamic Dispatcher functionality (sk105261)
- Bypass ports allow high-traffic applications to avoid dispatcher overhead
- Used for performance optimization in high-throughput scenarios
- Essential for monitoring bypass configuration in performance troubleshooting

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation with command examples

## Connection Potential
- Links to CheckPoint CoreXL architecture concepts
- Connects to performance optimization methodologies
- Related to Dynamic Dispatcher configuration commands
- Associated with high-throughput network optimization patterns