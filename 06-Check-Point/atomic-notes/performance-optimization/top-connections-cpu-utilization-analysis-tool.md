---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: Check Point Top Connections performance analysis
validation-status: verified
source: sk172229 - Top Connections Tool
---

# Top Connections CPU Utilization Analysis Tool

## Core Concept

A unified analysis tool that aggregates CPU-consuming connections from all CoreXL firewall instances into a single view, enabling systematic identification of performance bottlenecks through connection-level CPU utilization tracking and filtering capabilities.

## Tool Architecture

### Connection Aggregation Framework
- **Multi-instance collection**: Gathers top connections from all CoreXL instances simultaneously
- **Unified presentation**: Single view eliminates need to check individual instances
- **CPU correlation**: Links connection consumption to specific cores and instances
- **Real-time analysis**: Current system state with filtering and export capabilities

### Output Format Structure
```
conn: SOURCE_IP:SOURCE_PORT -> DEST_IP:DEST_PORT
service: SERVICE_TYPE (based on destination port)
cpu util: CPU_PERCENTAGE (percentage of CPU time consumed)
fw: COREXL_INSTANCE_ID (firewall instance handling connection)
CPU: CPU_CORE_NUMBER (physical core assignment)
```

## Command Syntax Framework

### Basic Usage
```bash
# Default view - all connections from all cores/instances
top_conns

# Real-time monitoring with watch
watch -d -n 2 top_conns
```

### Filtering Options
```bash
# CPU core filtering
top_conns -c {CORE1,CORE2,...}

# CoreXL instance filtering  
top_conns -i {INSTANCE1,INSTANCE2,...}

# CPU utilization threshold
top_conns -t THRESHOLD_PERCENTAGE

# Output to file
top_conns -o /PATH/FILENAME
```

### Advanced Filtering Examples
```bash
# Monitor specific cores only
top_conns -c 1,3

# Focus on high-utilization instances
top_conns -i 1,3

# Show only connections above 20% CPU
top_conns -t 20

# Export analysis to file
top_conns -o /var/log/top_connections.txt
```

## Analysis Methodology

### Performance Bottleneck Identification
- **Connection ranking**: Automatic sorting by CPU consumption
- **Instance correlation**: Identify which firewall instances are stressed
- **Core mapping**: Determine CPU core utilization patterns
- **Service analysis**: Protocol-based performance characterization

### Systematic Investigation Workflow
1. **Baseline measurement**: Establish normal connection CPU patterns
2. **Threshold analysis**: Identify connections exceeding normal consumption
3. **Instance distribution**: Assess load balancing effectiveness
4. **Temporal monitoring**: Track consumption patterns over time

## VSX Environment Considerations

### VSX-Specific Behavior
- **Context-specific operation**: Must navigate to specific VS instance first
- **Truncated output**: CPU and CoreXL instance columns not available
- **Parameter limitations**: Some filtering options don't apply to VSX mode
- **Multi-context analysis**: Requires separate execution per virtual system

### VSX Usage Pattern
```bash
# Check current context
vsenv

# Switch to specific virtual system
vsenv VSID

# Run top_conns in VS context
top_conns [parameters]
```

## Integration with Performance Investigation

### Correlation with Other Tools
- **CoreXL statistics**: Combine with `fw ctl multik stat` for comprehensive view
- **Heavy connection detection**: Cross-reference with automatic heavy connection identification
- **System monitoring**: Integrate with cpview and system resource monitoring
- **Historical analysis**: Export data for trend analysis and capacity planning

### Real-Time Monitoring Strategy
- **Continuous observation**: Use watch command for live updates
- **Threshold alerting**: Monitor for connections exceeding utilization thresholds
- **Pattern recognition**: Identify recurring high-consumption connections
- **Performance correlation**: Link connection patterns to overall system performance

## Research Context

The Top Connections tool provides granular visibility into connection-level CPU consumption across distributed firewall instances, enabling systematic identification of performance bottlenecks that might not be apparent through aggregate system monitoring alone.

## Connection Potential

Links to: CoreXL performance monitoring, connection-level analysis, CPU utilization tracking, performance bottleneck identification, real-time system monitoring