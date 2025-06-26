---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: monitoring
source-lines: 1700-1960
---

# CheckPoint cpstat - Application Statistics Monitoring

## Command Purpose
Comprehensive statistics collection system providing status and performance information for CheckPoint applications and Software Blades.

## Syntax Pattern
```
cpstat [-d] [-h <Host>] [-p <Port>] [-s <SICname>] [-f <Flavor>] [-o <PollingInterval>] [-c <Count>] [-e <Period>] <ApplicationFlag>
```

## Key Parameters
- **-h <Host>**: Target managed Security Gateway or ClusterXL object
- **-f <Flavor>**: Information type (default, perf, interfaces, policy, etc.)
- **-o <PollingInterval>**: Continuous monitoring interval in seconds (0=once)
- **-c <Count>**: Number of polling iterations before stopping
- **<ApplicationFlag>**: Target application (fw, os, vpn, ips, mg, etc.)

## Application Coverage
- **System**: OS performance, CPU, memory, disk, network interfaces
- **Security**: Firewall policy, IPS statistics, threat prevention
- **VPN**: IPsec tunnels, encryption acceleration, traffic statistics
- **Management**: Connected clients, log server status, database locks

## Monitoring Capabilities
Supports continuous monitoring with configurable intervals, remote system querying via SIC trust, and detailed performance metrics for capacity planning and troubleshooting.

## Connection Targets
- checkpoint-performance-metrics-framework
- checkpoint-snmp-monitoring-integration
- checkpoint-software-blade-statistics