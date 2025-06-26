---
state: permanent
type: atomic-note
created: 2025-06-18
last-reviewed: 2025-06-18
connections: 3
review-frequency: monthly
source-credibility: 9
research-context: checkpoint-securexl-performance-optimization
validation-status: verified
source: sk98348 - Best Practices - Security Gateway Performance
---

# CheckPoint SecureXL sim affinity Command

## Core Concept
The sim affinity command controls network interface affinity settings in SecureXL, managing how interfaces and acceleration components are bound to specific CPU cores for optimal performance distribution.

## Command Syntax
```bash
sim affinity [options]
sim affinity -h          # Help message
sim affinity -l          # List current affinity settings
sim affinity -a          # Set automatic affinity mode
sim affinity -s          # Set static (manual) affinity mode
sim affinity -c          # Calculate affinity (automatic mode)
```

## Functionality
- **Automatic Mode**: SecureXL periodically monitors CPU core load and interface traffic, dynamically reassigning interfaces to balance load
- **Static Mode**: Interfaces remain assigned as configured without dynamic reassignment
- **Affinity Control**: Binds network interfaces to specific CPU cores that are not running CoreXL FW instances

## Performance Impact
- Distributes network interface processing across available CPU cores
- Prevents interfaces from competing with CoreXL firewall instances for CPU resources
- Optimizes packet processing flow for multi-core systems
- Reduces CPU contention and improves overall gateway performance

## Deprecation Notice
**Important**: The sim affinity command has been deprecated in R80.40 and higher versions. Use `fw ctl affinity` or `mq_mng` tools instead for affinity management.

## Best Practices
- Use static affinity mode (`sim affinity -s`) for consistent performance
- Assign significant data flow interfaces to CPU cores on the same physical processor
- Bind interfaces serving the same connections to CPU cores on the same physical core
- Avoid CPU cores already assigned to CoreXL FW instances or system daemons

## SecureXL Context
SecureXL Information Manager (SIM) component that manages acceleration device configuration and network interface optimization for packet processing acceleration.

## Connection Potential
- Links to CoreXL CPU affinity management and firewall worker instances
- Connects to network interface optimization and multi-core performance scaling
- Related to SecureXL acceleration patterns and CPU core allocation strategies