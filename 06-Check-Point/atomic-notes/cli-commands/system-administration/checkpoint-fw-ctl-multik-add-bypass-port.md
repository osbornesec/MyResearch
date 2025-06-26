---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint CoreXL Dynamic Dispatcher Port Bypass Configuration

## Core Concept
The `fw ctl multik add_bypass_port` command adds specified TCP and UDP ports to the CoreXL Dynamic Dispatcher bypass list, allowing traffic on these ports to skip dynamic load balancing and be processed directly by a single firewall instance.

## Command Syntax
```bash
fw ctl multik add_bypass_port <Port Number 1>,<Port Number 2>,...<Port Number N>
```

## Parameters
- **Port Number**: Specifies the numbers of TCP and UDP ports to add to the bypass list
- Multiple ports can be added simultaneously using comma separation
- Applies to both TCP and UDP protocols

## Technical Details
- **Configuration Storage**: Settings saved to `$FWDIR/conf/dispatcher_bypass.conf`
- **Manual Editing**: Configuration file must NOT be edited manually
- **Dynamic Effect**: Changes take effect immediately without requiring restart
- **Related Commands**: Used with `fw ctl multik show_bypass_ports` for verification

## Usage Examples
```bash
# Add single port to bypass list
fw ctl multik add_bypass_port 8888

# Add multiple ports simultaneously
fw ctl multik add_bypass_port 8888,9999,7777

# Verify bypass port configuration
fw ctl multik show_bypass_ports

# Check configuration file directly
cat $FWDIR/conf/dispatcher_bypass.conf
```

## Configuration File Impact
- Updates `dynamic_dispatcher_bypass_ports_number` counter
- Adds ports to `dynamic_dispatcher_bypass_port_table` list
- Maintains comma-separated port list format

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation with examples

## Connection Potential
- Links to CoreXL Dynamic Dispatcher architecture concepts
- Connects to CheckPoint performance optimization strategies
- Related to load balancing bypass methodologies
- Associated with SecureXL acceleration patterns
- Connected to heavy connection management techniques