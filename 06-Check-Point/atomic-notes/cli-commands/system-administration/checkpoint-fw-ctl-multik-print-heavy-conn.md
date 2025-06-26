---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI Command Reference
validation-status: verified
---

# CheckPoint CoreXL Heavy Connection Detection Command

## Core Concept

The `fw ctl multik print_heavy_conn` command displays the table of heavy connections that consume the most CPU resources in the CoreXL Dynamic Dispatcher, helping identify connections that cause performance bottlenecks on specific Firewall instances.

## Command Syntax

**IPv4 Connections:**
```bash
fw [-d] ctl multik print_heavy_conn
```

**IPv6 Connections:**
```bash
fw6 [-d] ctl multik print_heavy_conn
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-d` | Runs the command in debug mode. Use only for troubleshooting the command itself. Best practice: redirect output to file or use script command to save CLI session. |

## Heavy Connection Detection Criteria

CoreXL suspects a connection is "heavy" if it meets these conditions:

- **Detection Window**: Security Gateway detected the suspected connection during the last 24 hours
- **Duration Threshold**: The suspected connection lasts more than specified time:
  - **R80.20 JHF47+**: 5 seconds
  - **R81+ (newer versions)**: 3 seconds
  - **CLI Guide Reference**: 10 seconds (may vary by version)
- **CPU Utilization**: Connection utilizes more than 50% of the total work the instance performs
- **Instance Load**: Specific instance CPU is over 60%

## Command Output Format

```
Source: 192.168.20.31; SPort: 51006; Dest: 172.30.40.55; DPort: 80; IPP: 6; Instance 1; Instance Load 61%; Connection instance load 100%
```

### Output Legend

| Field | Description |
|-------|-------------|
| Source | Source IP address |
| SPort | Source port |
| Dest | Destination IP address |
| DPort | Destination port |
| IPP | IP protocol number |
| Instance | CoreXL Firewall instance number |
| Instance Load | Instance CPU load percentage when connection was captured |
| Connection instance load | Percentage of instance load consumed by this connection (100 * Connection CPU load / Instance CPU load) |

## Alternative Output Format (Newer Versions)

```
[fw_0]; Conn: 194.29.37.116:33650 -> 172.23.8.8:22 IPP 6; Instance load: 99%; Connection instance load: 99%; StartTime: 07/01/19 17:26:53; Duration: 36; IdentificationTime: 07/01/19 17:27:28; Service: 6:22;
```

Additional fields include:
- **StartTime**: When the connection began
- **Duration**: Number of seconds the connection is/was considered heavy
- **IdentificationTime**: When the connection was identified as heavy
- **Service**: Protocol:port service identifier

## Use Cases

1. **Performance Troubleshooting**: Identify connections causing CPU bottlenecks on specific CoreXL instances
2. **Capacity Planning**: Understand which connections consume the most resources
3. **Load Balancing Analysis**: Determine if CoreXL Dynamic Dispatching is needed
4. **Network Optimization**: Identify candidates for fast acceleration or bypass

## Important Notes

- Shows suspected heavy connections even if they are already closed
- Heavy connection data is saved for the last 24 hours
- Available in both IPv4 and IPv6 variants
- Enhanced detection mechanism available from R80.20 JHF47+ (Kernel mode) and R80.40 JHF78+ (User mode)

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Secondary Source**: sk164215 - How to Detect and Handle Heavy Connections
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation cross-reference

## Connection Potential

- Links to CoreXL performance optimization concepts
- Connects to Dynamic Dispatching configuration
- Related to CPU utilization monitoring and troubleshooting
- Associated with network performance analysis methodologies
- Bridges to other `fw ctl multik` command variants