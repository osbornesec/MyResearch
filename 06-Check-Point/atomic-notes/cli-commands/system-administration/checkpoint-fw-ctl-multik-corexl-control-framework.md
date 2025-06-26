---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: clustering
source-lines: 34238-34300
---

# CheckPoint fw ctl multik - CoreXL Control Framework

## Command Purpose
Comprehensive CoreXL management interface for dynamic dispatching, bypass ports, connection tracking, priority queues, and instance control across IPv4 and IPv6 traffic processing.

## Syntax Pattern
```bash
fw ctl multik {add_bypass_port|del_bypass_port|dynamic_dispatching|gconn|get_instance|print_heavy_conn|prioq|show_bypass_ports|stat|start|stop|utilize}
fw6 ctl multik {same subcommands for IPv6}
```

## Key Parameters
- `dynamic_dispatching`: CoreXL Dynamic Dispatcher control
- `print_heavy_conn`: Heavy connection CPU consumption analysis
- `prioq`: Priority queue configuration for CoreXL instances
- `stat`: CoreXL status overview
- `utilize`: Queue utilization per CoreXL Firewall instance

## Advanced Context
Central command framework for enterprise multi-core acceleration optimization. CoreXL Dynamic Dispatcher manages traffic distribution across CPU cores with bypass port configuration for application-specific optimization. Critical for high-throughput environments requiring CPU affinity tuning, connection load balancing, and priority queue management. Essential for performance troubleshooting and capacity optimization in complex network architectures.

## Connection Targets
- CoreXL multi-core architecture optimization
- Dynamic Dispatcher traffic distribution patterns
- Enterprise CPU affinity and load balancing
- Priority queue configuration for performance tuning