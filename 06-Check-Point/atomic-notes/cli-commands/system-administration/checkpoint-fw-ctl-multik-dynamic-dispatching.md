---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CoreXL Dynamic Dispatcher CLI Commands
validation-status: verified
---

# CheckPoint CoreXL Dynamic Dispatcher Control Command

## Core Concept
The `fw ctl multik dynamic_dispatching` command shows and controls the CoreXL Dynamic Dispatcher, which dynamically assigns new connections to CoreXL Firewall instances based on CPU core utilization. This command enables load balancing across multiple firewall instances for optimal performance.

## Command Syntax

### IPv4 Syntax
```bash
fw ctl multik dynamic_dispatching
    get_mode
    off
    on
```

### IPv6 Syntax
```bash
fw6 ctl multik dynamic_dispatching
    get_mode
    off
    on
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `get_mode` | Shows the current state of the CoreXL Dynamic Dispatcher |
| `off` | Disables the CoreXL Dynamic Dispatcher |
| `on` | Enables the CoreXL Dynamic Dispatcher |

## Usage Examples

```bash
# Check current Dynamic Dispatcher mode
[Expert@MyGW:0]# fw ctl multik dynamic_dispatching get_mode
Current mode is Off

# Enable Dynamic Dispatcher
[Expert@MyGW:0]# fw ctl multik dynamic_dispatching on
New mode is: On
Please reboot the system
```

## Important Notes
- System reboot is required after enabling/disabling the Dynamic Dispatcher
- The Dynamic Dispatcher optimizes connection distribution based on CPU utilization
- For detailed information, refer to CheckPoint SK105261

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10 (Official CheckPoint documentation)
- **Validation Method**: Direct extraction from official CLI reference

## Connection Potential
- Related to CoreXL architecture and multi-core processing
- Connects to load balancing and performance optimization concepts
- Links to CheckPoint firewall instance management
- Associated with CPU utilization monitoring and heavy connection detection