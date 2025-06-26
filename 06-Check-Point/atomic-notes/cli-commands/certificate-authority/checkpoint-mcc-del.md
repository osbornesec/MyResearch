---
state: fleeting
type: atomic-note
created: 2025-06-17
domain: checkpoint-security
command-category: multi-core-management
---

# Check Point MCC Del Command - Multi-Core Connection Deletion

## Core Concept
The `mcc del` command in Check Point systems removes specific connection entries from the Multi-Core Check (MCC) connection table, enabling administrators to manually clear problematic or stale connections that may be affecting traffic flow or consuming system resources.

## Command Syntax
```bash
mcc del <connection_id>
mcc del -all
mcc del -src <source_ip>
mcc del -dst <destination_ip>
```

## Primary Use Cases
- **Stale Connection Cleanup**: Remove connections that are no longer active but remain in the table
- **Troubleshooting Traffic Issues**: Clear specific problematic connections during network debugging
- **Resource Management**: Free up connection table resources when approaching capacity limits
- **Security Response**: Remove suspicious or unwanted connections immediately

## Technical Context
- **Connection Table Management**: Operates on the multi-core connection tracking system
- **Performance Impact**: Can improve system performance by clearing stale entries
- **Security Implications**: Forcibly terminates connections, potentially disrupting legitimate traffic
- **Multi-Core Architecture**: Works across all firewall worker instances in CoreXL environments

## Connection Potential
- [[checkpoint-corexl-firewall-worker-instance-architecture]]
- [[checkpoint-connection-templates-acceleration]]
- [[heavy-connection-detection-systematic-methodology]]
- [[checkpoint-performance-investigation-baseline-establishment]]