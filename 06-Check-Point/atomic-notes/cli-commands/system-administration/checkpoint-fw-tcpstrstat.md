---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI administration commands
validation-status: verified
---

# CheckPoint fw ctl tcpstrstat Command - TCP Streaming Statistics Generator

## Core Concept
The `fw ctl tcpstrstat` command generates comprehensive statistics reports about TCP Streaming performance on CheckPoint Security Gateways, providing detailed counters for connections, packets, memory usage, and application-specific metrics.

## Command Syntax
```bash
fw [-d] ctl tcpstrstat [-p] [-r]
```

## Parameters
- **-d**: Debug mode - Use only for troubleshooting the command itself. Best practice: redirect output to file or use script command
- **-p**: Shows verbose statistics with additional detail
- **-r**: Resets all counters to zero

## Statistics Categories
The command provides four main categories of statistics:

### General Counters
- **Connections**: Current and concurrent connection counts (including SI connections)
- **Packets**: Total packet counts, bytes processed, and async packet status
- **Memory**: Allocated memory, referenced SKBUFFs, external packet references
- **Error Tracking**: Rejected, dropped, stripped, truncated, and paused packets

### Applications Counters
- Per-application statistics (e.g., ASPII_MT)
- Connection counts by direction (client-to-server, server-to-client)
- Data packet and byte counts by traffic direction

### FastForward Counters
- FastForward connection statistics
- Saved packet and byte request metrics
- Performance optimization tracking

## Typical Output Example
```
General Counters:
================
    Connections:
        Concurrent num of connections ............. 0
        Concurrent num of si connections .......... 0
    Packets:
        Total num of packets ....................... 2567
        Total packets in bytes .................. 202394
        Concurrent num of async packets .......... 0
    Memory:
        Allocated memory in bytes ................. 0
        Referenced skbuffs num ..................... 0
```

## Use Cases
- Performance monitoring and capacity planning
- Troubleshooting TCP streaming issues
- Security Gateway optimization analysis
- Network traffic flow verification

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide (Official Documentation)
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
Links to existing vault concepts:
- CheckPoint performance monitoring commands
- TCP streaming optimization techniques
- Network troubleshooting methodologies
- Security Gateway administration patterns
- Connection tracking and analysis frameworks