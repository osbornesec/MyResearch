---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: check-point-atrg-smartlog-processing
validation-status: verified
connections: 3
---

# SmartLog Index File Management Storage Patterns

## Core Concept
Check Point SmartLog stores index files in the $RTDIR/log_indexes directory for Security Management Server and global Multi-Domain Management. Index files point to original log files without duplicating log data, enabling rapid query processing while preserving storage efficiency.

## Storage Architecture
- **Index Location**: $RTDIR/log_indexes directory for centralized index storage
- **Pointer System**: Index files contain references to original log file locations, not duplicated data
- **Global Scope**: No separate indexes per Domain Management Server or individual domains
- **Naming Convention**: Index* files and directories follow standardized naming patterns

## Index Management Operations
- **Index Removal**: Delete all Index* files and directories from storage location
- **Service Requirements**: Stop SmartLog service before index manipulation, restart after completion
- **Recovery Process**: Complete index rebuild occurs automatically after index deletion

## Multi-Domain Considerations
- **Centralized Indexing**: Global index structure across all domains in Multi-Domain environment
- **Domain Scope**: Individual domains do not maintain separate index files
- **MDS Integration**: Index management coordinated through Multi-Domain Server

## Maintenance Procedures
```bash
mdsenv CMA_NAME_SmartLog
smartlogstop
cd /var/opt/CPmds-R7xx/customers/CMA_NAME_SmartLog/CPSmartLog-R7xx/data/
rm -rf Index*
smartlogstart
```

## Related Concepts
- [[smartlog-configuration-parameters-dual-file-system]]
- [[smartlog-performance-tuning-resource-management]]
- [[enterprise-log-storage-optimization-strategies]]

## Source Attribution
Check Point ATRG SmartLog sk92769 - Official Technical Documentation
Credibility: 10/10 - Authoritative vendor documentation