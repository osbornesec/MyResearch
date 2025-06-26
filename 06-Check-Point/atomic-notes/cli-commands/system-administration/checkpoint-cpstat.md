---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: CheckPoint CLI Reference Guide
validation-status: verified
connections: 5
review-frequency: quarterly
---

# CheckPoint cpstat Command Interface

## Core Concept

`cpstat` is CheckPoint's primary command-line tool for displaying real-time status and statistical information for Check Point applications and system components across Security Gateways, Management Servers, and ClusterXL environments.

## Command Structure

```bash
cpstat [-d] [-h <Host>] [-p <Port>] [-s <SICname>] [-f <Flavor>] 
       [-o <Polling Interval>] [-c <Count>] [-e <Period>] <Application Flag>
```

## Key Parameters

- **-h <Host>**: Target Security Gateway or ClusterXL object (IPv4, hostname, or DAIP object name)
- **-f <Flavor>**: Information type to collect (e.g., default, perf, cpu, policy)
- **-o <Polling Interval>**: Frequency in seconds for data collection (0 = once, N = every N seconds)
- **-c <Count>**: Number of polling iterations before stopping
- **-e <Period>**: Time window in seconds for statistical calculations
- **-d**: Debug mode with SNMP query/response details

## Primary Application Flags

| Flag | Purpose | Key Flavors |
|------|---------|-------------|
| `os` | Operating system metrics | cpu, memory, disk, perf, ifconfig |
| `fw` | Firewall statistics | default, policy, interfaces, perf |
| `blades` | Software blade status | fw, ips, av, urlf, vpn, threat-emulation |
| `mg` | Management server info | default, log_server, indexer |
| `vpn` | IPsec VPN metrics | IKE, ipsec, traffic, compression |

## Common Usage Examples

**CPU utilization monitoring:**
```bash
cpstat -f cpu os
```

**Firewall policy information:**
```bash
cpstat -f policy fw
```

**Continuous performance monitoring:**
```bash
cpstat os -f perf -o 5 -c 10
```

**Remote gateway monitoring:**
```bash
cpstat -h 192.168.1.1 -f default fw
```

## Platform-Specific Syntax

- **Scalable Platform (Expert mode)**: Prefix with `q_all cpstat`
- **Standard platforms**: Direct `cpstat` execution
- **Gaia Clish/Expert**: Full parameter support available

## Monitoring Capabilities

The command provides comprehensive visibility into:
- System performance metrics (CPU, memory, disk)
- Security policy enforcement statistics
- Network interface traffic patterns
- Software blade operational status
- VPN tunnel performance and statistics
- Management server connection status

## Connection Points

Links to: [[checkpoint-performance-investigation-baseline-establishment]], [[checkpoint-corexl-performance-architecture-framework]], [[checkpoint-debug-flag-configuration]], [[checkpoint-cpview-performance-monitoring]]

---

*Source: CheckPoint CLI Reference Guide R81.20 - Verified technical documentation*