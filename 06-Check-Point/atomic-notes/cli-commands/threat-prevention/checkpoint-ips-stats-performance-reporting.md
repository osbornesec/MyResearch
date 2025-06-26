---
state: permanent
type: atomic-note
created: 2025-06-18
last-reviewed: 2025-06-18
connections: 4
review-frequency: monthly
source-credibility: 8
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint IPS Stats Performance Reporting

## Core Concept

The `ips stats` command in CheckPoint Security Gateways collects comprehensive reports containing both IPS and Pattern Matcher statistics, providing detailed performance analysis and operational metrics for intrusion prevention system troubleshooting and optimization.

## Command Functionality

- **Statistical Collection**: Gathers detailed IPS and Pattern Matcher performance data
- **Performance Analysis**: Identifies which IPS protections impact firewall performance
- **Resource Monitoring**: Tracks resource usage by intrusion prevention components
- **Report Generation**: Creates structured reports for analysis and optimization

## Technical Implementation

Command syntax:
```bash
ips stats <IP Address of Gateway> <duration in seconds>
```

The system:
1. Monitors specified gateway for the defined duration
2. Collects comprehensive IPS and pattern matcher statistics
3. Stores results in `$FWDIR/ips/statistics_results/` directory
4. Generates multiple file types: raw reports, IPS stats, pattern matcher statistics

## Report Structure

Generated files include:
- **Raw Reports**: Unprocessed statistical data
- **IPS Statistics**: Processed intrusion prevention metrics
- **Pattern Matcher Stats**: Detection engine performance data
- **Performance Analysis**: Resource utilization and impact assessment

## Use Cases

- **Performance Troubleshooting**: Identify IPS components causing performance bottlenecks
- **Capacity Planning**: Understand resource requirements for IPS operations
- **Optimization**: Fine-tune IPS configurations based on performance data
- **Monitoring**: Regular performance baseline establishment and tracking

## Connection Potential

Links to [[checkpoint-ips-pmstats-intrusion-prevention-statistics]], [[checkpoint-pattern-matcher-analysis]], [[checkpoint-performance-investigation-baseline-establishment]], [[checkpoint-resource-monitoring-framework]]

## Source Quality
- **Primary Source**: CheckPoint Security Gateway Administrative Guide
- **Credibility Score**: 8/10
- **Validation Method**: Official documentation cross-reference and technical validation