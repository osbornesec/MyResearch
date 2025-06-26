---
state: permanent
type: atomic-note
created: 2025-06-18
last-reviewed: 2025-06-18
connections: 3
review-frequency: monthly
source-credibility: 8
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint IPS PMStats Intrusion Prevention Statistics

## Core Concept

The `ips pmstats` command in CheckPoint Security Gateways monitors IPS (Intrusion Prevention System) performance statistics, providing detailed metrics on pattern matcher operations and intrusion prevention activities for performance analysis and troubleshooting.

## Command Functionality

- **Performance Monitoring**: Captures operational data related to IPS pattern matching and detection activities
- **Resource Analysis**: Identifies which IPS protections or components may be impacting firewall performance
- **Statistical Collection**: Gathers comprehensive data on IPS operations for analysis and optimization
- **Troubleshooting Support**: Provides metrics to diagnose performance bottlenecks in intrusion prevention

## Technical Implementation

The command works in conjunction with `ips stats` to collect comprehensive reports containing both IPS and Pattern Matcher statistics. The collected data is stored in `$FWDIR/ips/statistics_results/` directory with detailed raw reports and statistical analysis.

## Usage Pattern

```bash
ips stats <IP Address of Gateway> <duration in seconds>
```

Example: `ips stats 192.168.20.14 40` - Collects IPS statistics for a gateway for 40 seconds

## Connection Potential

Links to [[checkpoint-ips-stats-performance-reporting]], [[checkpoint-pattern-matcher-analysis]], [[checkpoint-performance-investigation-baseline-establishment]]

## Source Quality
- **Primary Source**: CheckPoint Security Gateway Documentation
- **Credibility Score**: 8/10
- **Validation Method**: Official documentation cross-reference