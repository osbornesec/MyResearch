---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: Check Point performance optimization
validation-status: verified
source: sk164215 - How to Detect and Handle Heavy Connections
---

# Heavy Connection Detection Systematic Methodology

## Core Concept

An algorithmic approach to automatically identify network connections that consume disproportionate CPU resources on individual firewall cores, using specific thresholds for instance utilization, connection duration, and relative CPU consumption.

## Detection Algorithm

### Automatic Heavy Connection Criteria
**All three conditions must be met simultaneously:**

1. **Instance CPU Threshold**: Specific firewall instance CPU > 60%
2. **Duration Threshold**: Connection duration > 5 seconds (reduced to 3 seconds in newer versions)
3. **Relative Utilization**: Connection consumes > 50% of total instance work (>30% overall CPU)

### Detection Commands
```bash
# IPv4 heavy connections
fw ctl multik print_heavy_conn

# IPv6 heavy connections  
fw6 ctl multik print_heavy_conn
```

## Output Analysis Framework

### Heavy Connection Record Format
```
[fw_X]; Conn: SRC_IP:SRC_PORT -> DST_IP:DST_PORT IPP PROTOCOL; 
Instance load: X%; Connection instance load: X%; 
StartTime: DATE TIME; Duration: SECONDS; 
IdentificationTime: DATE TIME; Service: PROTOCOL:PORT;
```

### Analysis Methodology
- **Instance load**: Overall CPU utilization of the firewall core
- **Connection instance load**: Percentage of core's work consumed by this connection
- **Duration tracking**: How long connection has been active
- **Service identification**: Protocol and port for traffic characterization

## Manual Detection Procedures

### Pre-R80.20 Method (Legacy)
Use `cpkstat` to identify connections with:
- High CPU cycles consumption
- Frequent packet handling requirements
- Focus on packet-intensive rather than CPU-intensive connections

### Modern Detection Features
- **24-hour data retention**: System maintains heavy connection history
- **CPDiag integration**: Automatic upload for diagnosis purposes
- **Average utilization**: Rolling average calculation prevents false positives from short bursts

## Investigation Integration

### Connection Impact Assessment
1. **Single core analysis**: Determine if issue affects one or multiple cores
2. **Traffic characterization**: Identify protocol and application patterns
3. **Load distribution**: Assess whether load balancing is effective
4. **Temporal analysis**: Evaluate connection duration and patterns

## Research Context

This methodology enables proactive identification of performance bottlenecks caused by individual high-volume connections, preventing system-wide performance degradation through targeted analysis.

## Connection Potential

Links to: CoreXL performance optimization, network traffic analysis, system resource monitoring, load balancing strategies, performance bottleneck identification