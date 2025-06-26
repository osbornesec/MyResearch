---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: monitoring
source-lines: 1795-1899
---

# CheckPoint cpstat - Performance and Statistics Monitoring

## Command Purpose
Shows comprehensive status and statistics information for CheckPoint applications, operating system, and Software Blades with flexible polling and filtering capabilities.

## Syntax Pattern
```bash
cpstat [-d] [-h <Host>] [-p <Port>] [-s <SICname>] [-f <Flavor>] [-o <Polling Interval> [-c <Count>] [-e <Period>]] <Application Flag>
```

## Key Parameters
- **-h <Host>**: Target managed Security Gateway (IP, hostname, or DAIP object)
- **-f <Flavor>**: Information type (default, perf, interfaces, policy, etc.)
- **-o <Polling Interval>**: Frequency in seconds (0=once, N=every N seconds)
- **-c <Count>**: Number of iterations before stopping
- **Application Flag**: Target application (fw, os, vpn, ips, etc.)

## Licensing Context
Essential for monitoring licensed blade performance and utilization. Provides real-time visibility into firewall throughput, VPN connections, IPS activity, and resource consumption across the security infrastructure.

## Connection Targets
- [[checkpoint-performance-monitoring-framework]]
- [[checkpoint-blade-statistics-analysis]]
- [[checkpoint-capacity-planning-metrics]]
- [[checkpoint-troubleshooting-data-collection]]