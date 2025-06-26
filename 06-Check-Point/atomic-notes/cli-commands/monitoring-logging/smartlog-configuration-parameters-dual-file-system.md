---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: check-point-atrg-smartlog-processing
validation-status: verified
connections: 2
---

# SmartLog Configuration Parameters Dual File System

## Core Concept
Check Point SmartLog configuration utilizes a dual-file system with parameters split between smartlog_settings.conf (replaced during upgrades) and smartlog_settings.txt (persistent across upgrades). This design ensures critical customizations survive system updates.

## File Structure
- **smartlog_settings.conf**: Located in $SMARTLOGDIR/conf/, replaced during upgrades, contains default system parameters
- **smartlog_settings.txt**: Located in $SMARTLOGDIR/, persistent across upgrades, contains user customizations
- **Restart Requirement**: `smartlogstop;smartlogstart` required after any configuration changes

## Key Parameters
- **min_disk_space**: Minimum available disk space in MB before SmartLog stops indexing
- **min_required_ram_mb**: Minimum RAM requirement (1-1024 MB range)
- **num_days_restriction_for_fetch_all**: Time frame for log display (default 3 days)
- **server_port**: SmartLog server listening port configuration

## Configuration Pattern
```
:num_days_restriction_for_fetch_all (3)
:min_required_cores (1)
:min_required_disk_space_gb (1)
:min_required_ram_mb (9)
:data ("/opt/CPSmartLog-R75.40/data")
:server_port ("127.0.0.1:18242")
```

## Operational Benefits
- **Upgrade Safety**: User customizations preserved through persistent file separation
- **Flexibility**: Performance tuning and resource management through configurable parameters
- **Service Management**: Clear restart requirements for configuration activation

## Related Concepts
- [[smartlog-performance-tuning-resource-management]]
- [[smartlog-index-file-management-storage-patterns]]
- [[enterprise-configuration-management-upgrade-patterns]]

## Source Attribution
Check Point ATRG SmartLog sk92769 - Official Technical Documentation
Credibility: 10/10 - Authoritative vendor documentation