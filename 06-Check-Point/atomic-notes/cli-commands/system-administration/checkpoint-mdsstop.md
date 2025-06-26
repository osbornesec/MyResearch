---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-multi-domain-management
validation-status: verified
command-family: multi-domain-management
---

# CheckPoint mdsstop - Multi-Domain Management Server Shutdown

## Command Purpose
Stops the Multi-Domain Security Management Server (MDS) and all associated Domain Management Servers (DMS) in a controlled sequence for complete multi-domain environment shutdown.

## Syntax Pattern
```
mdsstop
```

## System Context
Essential administrative command for Check Point Multi-Domain Security Management (MDSM) environments that gracefully terminates the central management server and all hosted Domain Management Servers.

## Shutdown Sequence
Sequentially stops each Domain Management Server in controlled order, with default capability to process up to 10 Domain Management Servers simultaneously for optimized shutdown performance.

## Multi-Domain Architecture Integration
Central component of Provider-1/MDSM infrastructure that manages multiple virtual Security Management Servers, each controlling Security Gateways for respective organizational domains.

## Usage Scenarios
- Planned maintenance operations
- System upgrades and patches
- Backup operation preparation
- Management connectivity troubleshooting
- Pre-reboot service cleanup

## Operational Considerations
Command waits for each Domain Management Server to complete shutdown before proceeding to next, ensuring data integrity and preventing corruption during multi-domain shutdown sequences.

## Connection Targets
- checkpoint-mdsstart-startup-system
- checkpoint-multi-domain-management-architecture
- checkpoint-domain-management-server-framework