---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: diagnostics
source-lines: 120-125
---

# CheckPoint cpinfo - Diagnostics Collection System

## Command Purpose
Comprehensive diagnostics data collection utility that gathers system information at execution time for CheckPoint Support troubleshooting.

## Syntax Pattern
```
cpinfo
```

## System Context
Mandatory tool for CheckPoint Support cases. Collects comprehensive system state including configuration files, logs, process information, and system metrics required for effective troubleshooting.

## Collection Scope
Gathers extensive diagnostics data including system configuration, process states, log files, network configuration, and CheckPoint-specific diagnostic information into compressed archive format.

## Usage Requirements
Must be executed when contacting CheckPoint Support about system issues. Provides baseline system state for support analysis and troubleshooting workflows.

## Reference Documentation
Complete usage instructions and collected data details available in sk92739.

## Connection Targets
- checkpoint-support-case-management
- checkpoint-system-diagnostics-framework
- checkpoint-troubleshooting-methodology