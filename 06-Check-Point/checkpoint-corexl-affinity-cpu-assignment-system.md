---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-corexl-processing
validation-status: verified
source: sk98737 - ATRG CoreXL
---

# Checkpoint CoreXL Affinity CPU Assignment System

## Core Concept
The `fw ctl affinity` command system provides comprehensive control over CoreXL affinities, enabling assignment of Virtual Devices, interfaces, processes, and CoreXL Firewall instances to specific CPU cores for optimal performance distribution.

## Affinity Management Categories

### Interface Affinity
- **Single Core Constraint**: Interface affinity can be set only to a single CPU core
- **Command**: `fw ctl affinity -s -i [Interface_Name] [CPU_ID]`
- **Limitation**: Each interface must be assigned to exactly one CPU core

### Process Affinity
- **PID-Based Assignment**: `fw ctl affinity -s -p [PID] [CPU_IDs] | all`
- **Name-Based Assignment**: `fw ctl affinity -s -d -pname [Daemon_Name] [-vsid VSID_ranges] -cpu [CPU_ID_ranges]`
- **Flexible CPU Assignment**: Processes can be assigned to single or multiple CPU cores

### Virtual Device Affinity
- **VSX Support**: `fw ctl affinity -s -d [-vsid VSID_ranges] -cpu [CPU_ID_ranges]`
- **Device Types**: Virtual Systems (VS), Virtual Routers (VR), Virtual Switches (VSW)
- **Context Awareness**: Uses current context when VSID flag omitted

### Firewall Instance Affinity
- **Instance-Specific**: `fw ctl affinity -s -d -inst [Instances_ranges] -cpu [CPU_ID_ranges]`
- **Bulk Assignment**: `fw ctl affinity -s -d -fwkall [Number_of_CPUs]`

## Query and Monitoring Capabilities

### Standard Output Options
- **`-l`**: Current CoreXL affinities
- **`-r`**: Reverse order display
- **`-a`**: All current affinities
- **`-v`**: Verbose output
- **`-q`**: Suppress error messages

### Extended Output Format
- **`-x`**: Extended output with flexible filtering
- **CPU Range Support**: Single CPU, ranges (0-5), combinations (0-2 4)
- **VSID Range Support**: Single VSID, ranges, combinations
- **Flag Options**: e(exceptions), k(kernel threads), t(threads), n(process names), h(hex format), o(file output)

### VSX Factory Defaults
- **`fw ctl affinity -vsx_factory_defaults`**: Reset with user prompt
- **`fw ctl affinity -vsx_factory_defaults_no_prompt`**: Reset without prompt
- **Scope**: VSX R77 and above environments

## Connection Potential
- Links to multi-core performance optimization strategies
- Connects with VSX virtual system management
- Relates to process monitoring and performance tuning
- Associates with CPU utilization optimization frameworks