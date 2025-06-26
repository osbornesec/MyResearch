---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-corexl-processing
validation-status: verified
source: sk98737 - ATRG CoreXL
---

# Checkpoint CoreXL Multik Command Framework

## Core Concept
The `fw ctl multik` command provides comprehensive control over CoreXL Firewall instances, enabling administrators to start, stop, and monitor multi-core firewall processing with instance-specific granular control.

## Primary Command Functions
- **Instance Control**: Start/stop CoreXL and specific firewall instances
- **Status Monitoring**: Print summary tables for CPU cores and CoreXL instances
- **Help System**: Built-in help messages with available parameters
- **Granular Management**: Control individual firewall instances by Instance_ID

## Command Syntax and Operations

### Global CoreXL Control
- **`fw ctl multik start`**: Starts CoreXL framework
- **`fw ctl multik stop`**: Stops CoreXL framework
- **`fw ctl multik stat`**: Prints summary table for CPU cores and firewall instances
- **`fw ctl multik help`**: Displays general help message with available parameters

### Instance-Specific Control
- **`fw -i [Instance_ID] ctl multik start`**: Starts specific CoreXL Firewall instance
- **`fw -i [Instance_ID] ctl multik stop`**: Stops specific CoreXL Firewall instance

## Operational Benefits
- **Performance Management**: Granular control over multi-core firewall processing
- **Troubleshooting**: Ability to isolate and manage individual firewall instances
- **Resource Optimization**: Dynamic control of firewall instance allocation
- **Monitoring**: Real-time status information for CPU and instance utilization

## Implementation Context
Commands execute in the context of the current security gateway or VSX environment, providing appropriate control over CoreXL instances based on the system architecture and licensing constraints.

## Connection Potential
- Links to CoreXL affinity management procedures
- Connects with multi-core performance optimization strategies
- Relates to VSX virtual system management
- Associates with firewall instance monitoring and troubleshooting frameworks