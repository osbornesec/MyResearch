---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: corexl
source-lines: 1364-1378
---

# CheckPoint CoreXL Global Connections Statistics Display Command

## Core Concept

The `fw ctl multik gconn` command displays comprehensive statistics about CoreXL Global Connections stored in the Security Gateway kernel table `fw_multik_ld_gconn_table`. This command provides visibility into which CoreXL Firewall instance owns which connections, essential for CoreXL performance monitoring and troubleshooting.

## Command Syntax

```bash
fw [-d] ctl multik gconn [-h] [-p] [-s] [-sec] [-seg <Number>]
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-d` | Runs the command in debug mode. Use only for troubleshooting the command itself. Best Practice: redirect output to file or use script command to save session |
| `-h` | Shows built-in help |
| `-p` | Shows additional CoreXL Firewall instance information including Priority Queues: I/O (In/Out), Inst. ID, Flags, Seq (Sequence), Hold_ref (Hold reference), Prio (Priority Queues mode), last_enq_jiff, queue_indx, conn_tokens |
| `-s` | Shows summary with total number of global connections only |
| `-sec` | Shows additional CoreXL Firewall instance details: I/O (In/Out), Inst. ID (Instance ID), Flags, Seq (Sequence), Hold_ref (Hold reference) |
| `-seg <Number>` | Shows connections for specific segment number |

## Key Information Displayed

- **Connection Details**: Source IP, Source Port, Destination IP, Destination Port, Protocol
- **CoreXL Instance Information**: Which firewall instance owns each connection
- **Connection Flags**: FP (FastPath) and other connection state indicators
- **Reference Counts**: I/O reference counting for connection tracking
- **Instance Assignments**: Shows load distribution across CoreXL instances

## Usage Examples

**Basic Connection Display:**
```bash
fw ctl multik gconn
```

**Summary Only:**
```bash
fw ctl multik gconn -s
# Output: Total number of global connections: 12
```

**Detailed Instance Information:**
```bash
fw ctl multik gconn -sec
```

## Important Limitations

- **No VSX Support**: Command does not support VSX environments
- **Kernel Table Dependency**: Displays data from `fw_multik_ld_gconn_table`

## Performance Monitoring Context

Essential for diagnosing CoreXL load balancing issues, connection distribution problems, and understanding which firewall instances are handling specific traffic flows. Critical for troubleshooting performance bottlenecks in multi-core CheckPoint deployments.

## Source Quality

- **Primary Source**: CheckPoint R81.20 CLI Reference Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Targets

- checkpoint-corexl-firewall-worker-instance-architecture
- checkpoint-corexl-performance-architecture-framework
- checkpoint-corexl-multik-command-framework
- checkpoint-corexl-multi-core-performance-scaling
- checkpoint-connection-tracker-anomaly-detection-system