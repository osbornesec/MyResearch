---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: advanced-features
source-lines: 42017-42056
---

# CheckPoint ips bypass - Adaptive Load Management System

## Command Purpose
Controls IPS Bypass mode for automatic threat prevention disable/enable based on configurable CPU and memory utilization thresholds, ensuring system stability under high load conditions.

## Syntax Pattern
```bash
ips bypass {off|on|set <options>|stat}
ips bypass set {cpu|mem} {low|high} <0-100>
```

## Key Parameters
- `on/off`: Enable/disable IPS Bypass mode
- `set cpu low/high <0-100>`: Configure CPU utilization thresholds
- `set mem low/high <0-100>`: Configure memory utilization thresholds
- `stat`: Show bypass status and current thresholds

## Advanced Context
Critical enterprise resilience feature for high-load environments. IPS automatically disables when CPU/memory reaches high threshold and re-enables when utilization drops to low threshold. Essential for maintaining system availability during traffic spikes or resource constraints. Cluster deployments require synchronized configuration across all members. Scalable Platforms (Maestro, Chassis) need Expert mode execution on Security Groups.

## Connection Targets
- Enterprise load balancing and resilience strategies
- IPS performance optimization under stress conditions
- Cluster synchronization for adaptive protection
- Scalable Platform resource management patterns