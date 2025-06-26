---
created: 2025-06-17T12:04:00Z
state: permanent
type: atomic-note
source: sk164215 - How to Detect and Handle Heavy Connections
source-credibility: 9
research-context: Check Point Heavy Connection Analysis
validation-status: verified
connections: 4
---

# Check Point Heavy Connection Detection Methodology

## Core Concept
Heavy connections in Check Point Security Gateways cause single CoreXL instance high utilization while other cores remain idle, requiring systematic detection through CPU analysis and connection-specific monitoring tools.

## Heavy Connection Definition Criteria
A connection qualifies as "heavy" when meeting all three conditions:
1. **CPU threshold**: Specific instance CPU >60%
2. **Duration requirement**: Connection lasts >5 seconds (reduced to 3 seconds in newer versions)
3. **Resource utilization**: Connection consumes >50% of total instance work (>30% CPU utilization)

## Detection Methods by Version

### Legacy Detection (Pre-R80.20 JHF Take 47)
- **Tool**: `cpkstat` command for kernel mode firewalls
- **Focus**: Connections with high packet handling frequency
- **Output analysis**: Identify connections transferring many packets vs. high CPU cycles

### Automated Detection (R80.20+ Kernel / R80.40+ User Mode)
- **Built-in mechanism**: Automatic heavy connection identification and reporting
- **Command**: `fw ctl multik print_heavy_conn` or `fw6 ctl multik print_heavy_conn`
- **Data retention**: 24-hour historical data storage
- **CPDiag integration**: Automatic data collection for diagnosis

### VSX Environment Detection (Legacy)
- **Tool**: CPmonitor for VSX gateways where cpkstat unavailable
- **Process**: 
  1. Check top connections in cpview (Network → Top Connections)
  2. Identify instance handling connection: `fw ctl multik get_instance`
  3. Verify low connection count on affected instance: `fw ctl multik stat`

## Heavy Connection Output Analysis
**Sample Output Format**:
```
[fw_0]; Conn: 194.29.37.116:33650 -> 172.23.8.8:22 IPP 6; 
Instance load: 99%; Connection instance load: 99%; 
StartTime: 07/01/19 17:26:53; Duration: 36;
```

**Key Metrics**:
- **Instance load**: Overall CPU utilization of affected CoreXL instance
- **Connection instance load**: Percentage of instance resources consumed by specific connection
- **Duration**: Time period connection classified as heavy

## Mitigation Strategies
- **CoreXL Dynamic Dispatching**: Distribute new connections based on instance utilization
- **SecureXL Fast Accelerator**: For trusted connections requiring bypass optimization
- **Core rebalancing**: Redistribute connections across available instances

## Connection Potential
Links to Check Point CoreXL optimization strategies, performance monitoring methodologies, and load balancing techniques.