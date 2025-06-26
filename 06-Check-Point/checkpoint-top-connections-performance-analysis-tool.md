---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-performance
source-credibility: 9
validation-status: verified
---

# Check Point Top Connections Performance Analysis Tool

## Core Concept

Unified performance analysis tool consolidating CPU-intensive connections across all CoreXL Firewall instances into single view, enabling targeted performance optimization through connection-specific CPU utilization analysis.

## Tool Architecture

### Unified View Capability
- **Multi-Instance Aggregation**: Combines top connections from all CoreXL Firewall instances
- **Real-Time Analysis**: Identifies connections consuming most CPU time per instance
- **Filtering Options**: CPU core, CoreXL instance, CPU load threshold filtering
- **Export Functionality**: Output to file for historical analysis and reporting

### Data Output Structure
- **Connection 4-Tuple**: Source IP, Source Port, Destination IP, Destination Port
- **Service Classification**: Service type based on destination port
- **CPU Utilization**: Percentage of CPU time consumed by connection
- **Instance Mapping**: CoreXL Firewall instance ID handling the connection
- **CPU Core Assignment**: Physical CPU core running the CoreXL instance

## Command Syntax Framework

### Basic Usage Patterns
```bash
# Default mode - all connections, all cores, all instances
top_conns

# CPU core filtering
top_conns -c 1,3

# CoreXL instance filtering  
top_conns -i 1,3

# CPU threshold filtering (20% minimum)
top_conns -t 20

# Output to file
top_conns -o /var/log/top_connections.txt

# Real-time monitoring
watch -d -n 2 top_conns
```

### VSX Mode Considerations
- **Context-Specific Execution**: Must navigate to applicable VS instance first
- **Column Truncation**: CPU and CoreXL instance columns not displayed
- **Parameter Limitations**: CPU core and instance filtering not applicable
- **VS Environment Navigation**: Use vsenv command for context switching

## Performance Analysis Applications

### Bottleneck Identification
- **High CPU Connections**: Identify specific connections causing performance issues
- **Load Distribution Analysis**: Understand connection distribution across CoreXL instances
- **Service Pattern Recognition**: Identify problematic service types or protocols
- **Temporal Analysis**: Monitor connection behavior changes over time

### Optimization Use Cases
- **Rule Base Tuning**: Optimize firewall rules based on high-CPU connection patterns
- **CoreXL Balancing**: Adjust load distribution based on connection analysis
- **Policy Optimization**: Focus policy improvements on high-impact connections
- **Capacity Planning**: Understand connection load patterns for scaling decisions

## Integration Requirements

### Version Availability
- **R81.10+**: Integrated by default
- **R81 JHF Take 34+**: Available via Jumbo Hotfix
- **R80.40 JHF Take 119+**: Available via Jumbo Hotfix

### Related Performance Tools
- **cpview**: CPU overview and traffic analysis
- **fw ctl multik stat**: CoreXL instance and CPU core mapping
- **Performance Investigation Procedure**: Systematic troubleshooting framework

## Research Context

Performance analysis tool from sk172229 (Top Connections Tool). Provides connection-specific CPU utilization analysis for Check Point performance optimization.

## Connection Potential

Links to CoreXL configuration procedures, performance investigation methodologies, and CPU utilization monitoring frameworks across Check Point performance documentation.