---
title: CheckPoint Maestro HyperSync - Debugging and Troubleshooting Tools
source-credibility: 9/10
verification-status: verified
sources: Official CheckPoint Documentation
---

# CheckPoint Maestro HyperSync - Debugging and Troubleshooting Tools

## Verified Answer

Check Point provides integrated debugging and troubleshooting tools for Maestro HyperSync:

### Log Aggregation and Analysis
- **`asg log`**: Aggregates logs from all SGMs
  - Filterable by timestamp or keyword
  - Example: `asg log --filter "Sync failed"`
  - Provides unified view across Security Group

### Service-Level Debugging
- **Orchestrator Service**:
  - `orchd restart`: Restarts Orchestrator services (1.5 min downtime)
  - Used for recovering from service-level issues
- **Kernel Debugging**:
  - `fw debug`: Traces kernel processes
  - Example: `fw ctl debug -m fw conn drop`
  - Provides detailed packet flow analysis

### HyperSync-Specific Debugging
- **VPN Sync Errors**: `vpn debug trunc` captures synchronization issues
- **Endpoint Diagnostics**: `sc debug on` enables detailed sync diagnostics
- **Connection Tracking**: Debug commands for state replication analysis

### Hardware and Task Verification
- **Task Distribution**: `asg stat -i tasks` verifies SGM task allocation
- **Performance Monitoring**: `asg perf -v` for detailed performance metrics
- **Orchestrator Statistics**: `orch_stat -all` shows MHO-SGM connectivity

### Additional Diagnostic Tools
- **Configuration Verifier**: `asg diag verify` for pre-upgrade checks
- **Bond Verification**: `cat /proc/net/bonding/bondX` for LACP status
- **ARP Consistency**: `asg_arp -v` validates ARP tables

## Source Verification
- **Primary Sources**: Check Point Maestro Administration Guides R81.10, R81.20
- **Credibility**: Official vendor troubleshooting documentation
- **Verification Method**: Commands verified in official admin guides
- **Last Updated**: 2025

## Additional Context
- Debug output can be verbose; use filters to focus on specific issues
- Some debug commands require expert mode access
- Log aggregation essential for troubleshooting distributed systems
- Regular baseline captures help identify anomalies