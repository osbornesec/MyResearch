---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: Check Point systematic diagnostic command organization
validation-status: verified
source: sk167553, sk98348, sk153832 - Multiple diagnostic frameworks
---

# Multi-Layer Diagnostic Command Hierarchy

## Core Concept

A structured command taxonomy that organizes diagnostic tools into progressive complexity levels, enabling systematic troubleshooting from basic status checks through advanced deep-dive analysis for comprehensive system performance investigation.

## Diagnostic Command Layers

### Layer 1: Basic Status Validation
**Purpose**: Rapid system health assessment
```bash
# CoreXL instance status
fw ctl multik stat

# SecureXL acceleration status
fwaccel stat

# Cluster health (if applicable)
cphaprob state

# Interface basic status
ifconfig -a
```

### Layer 2: Intermediate Analysis Commands
**Purpose**: Resource utilization and traffic analysis
```bash
# CPU and resource monitoring
cpview

# Network interface statistics
netstat -ni | grep -v "\."

# System resource summary
fw ctl pstat
fw6 ctl pstat

# Hardware sensor monitoring
cpstat -f sensors os
```

### Layer 3: Advanced Performance Analysis
**Purpose**: Detailed performance bottleneck identification
```bash
# Top CPU-consuming connections
top_conns

# Heavy connection detection
fw ctl multik print_heavy_conn
fw6 ctl multik print_heavy_conn

# SecureXL detailed statistics
fwaccel stats
fwaccel conns
fwaccel templates
```

### Layer 4: Deep Diagnostic Investigation
**Purpose**: Root cause analysis and forensic investigation
```bash
# Connection lifecycle analysis
# View tracker.log with TIV tool

# Process-level CPU analysis (legacy)
cpkstat

# Kernel statistics and debugging
fw ctl debug
fw6 ctl debug

# Memory and resource deep analysis
fw ctl pstat -extended
```

## Command Selection Framework

### Diagnostic Decision Matrix
**Problem Type → Command Layer Progression:**

1. **General Performance Issues**:
   - Start: `cpview` (Layer 2)
   - Progress: `top_conns` (Layer 3)
   - Deep dive: Connection Tracker (Layer 4)

2. **Single Core High Utilization**:
   - Start: `fw ctl multik stat` (Layer 1)
   - Progress: `top_conns -i INSTANCE` (Layer 3)
   - Deep dive: Heavy connection analysis (Layer 3-4)

3. **Acceleration Issues**:
   - Start: `fwaccel stat` (Layer 1)
   - Progress: `fwaccel stats` (Layer 3)
   - Deep dive: `fwaccel debug` (Layer 4)

4. **Network Interface Problems**:
   - Start: `ifconfig -a` (Layer 1)
   - Progress: `netstat -ni` (Layer 2)
   - Deep dive: `ethtool -S INTERFACE` (Layer 4)

## Real-Time Monitoring Patterns

### Continuous Monitoring Commands
```bash
# Real-time top connections
watch -d -n 2 top_conns

# Dynamic CPU monitoring
watch -n 1 'fw ctl multik stat'

# Interface statistics tracking
watch -n 5 'netstat -ni | grep -v "\."'

# System resource monitoring
watch -n 3 cpview
```

### Output Redirection and Analysis
```bash
# Capture for historical analysis
top_conns -o /var/log/top_connections_$(date +%Y%m%d_%H%M).txt

# Extended monitoring session
fw ctl multik stat > /tmp/corexl_baseline_$(date +%Y%m%d).log

# Performance trend collection
while true; do echo "$(date): $(fwaccel stat)" >> /var/log/acceleration_status.log; sleep 300; done
```

## Progressive Investigation Methodology

### Escalation Framework
1. **Layer 1 → Layer 2**: When basic status shows abnormalities
2. **Layer 2 → Layer 3**: When resource utilization indicates specific bottlenecks
3. **Layer 3 → Layer 4**: When advanced analysis identifies anomalies requiring forensic investigation

### Command Combination Strategies
- **Parallel execution**: Run multiple Layer 1-2 commands simultaneously for comprehensive baseline
- **Sequential analysis**: Use Layer 3-4 commands based on specific findings from lower layers
- **Temporal correlation**: Combine real-time monitoring with historical analysis commands

## Environment-Specific Adaptations

### VSX Environment Modifications
- **Context switching**: Navigate to specific virtual systems before diagnostic execution
- **Multi-context analysis**: Repeat diagnostic commands across multiple virtual systems
- **Resource attribution**: Understand virtual system resource allocation in diagnostic output

### Cluster Environment Considerations
- **Member-specific analysis**: Execute diagnostics on individual cluster members
- **Sync network validation**: Include cluster-specific health checks in Layer 2
- **Failover impact assessment**: Evaluate diagnostic results in context of cluster state

## Research Context

This hierarchical command structure provides systematic troubleshooting methodology that prevents random diagnostic approaches and ensures comprehensive coverage from basic health validation through forensic-level analysis.

## Connection Potential

Links to: systematic troubleshooting methodologies, network diagnostic frameworks, performance monitoring strategies, command-line diagnostic tools, escalation procedures