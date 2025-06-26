---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-clustering-investigation
validation-status: verified
connections: 4
review-frequency: monthly
domain: infrastructure-security
---

# Critical Device Problem Notification System

## Core Concept

Critical Devices (Problem Notifications/pnotes) are monitored mission-critical components in ClusterXL that trigger cluster failover when reporting 'problem' state, providing granular health monitoring and automated failure detection mechanisms.

## Technical Framework

**Default Critical Devices:**
- **Interface Active Check:** Cluster interface state monitoring
- **Synchronization:** Full sync success/failure during member joins
- **Filter:** Security policy installation status
- **cphad:** Clustering daemon `cphamcset` state
- **fwd:** Firewall daemon state monitoring
- **cvpnd:** Mobile Access daemon (when enabled)
- **routed:** Routing daemon (Gaia R76+)
- **ted:** Threat Emulation daemon (when enabled)

**Device Attributes:**
- Registration number (internal kernel reference)
- Timeout value (report frequency requirement)
- Current state (ok/problem/init)
- Time since last report (monitoring staleness)

## Implementation Methods

**Manual Critical Device Management:**
```bash
# Register new critical device
cphaprob -d DeviceName -t TimeOut -s State [-p] register

# Remove critical device
cphaprob -d DeviceName [-p] unregister

# Manual failover using admin_down device
clusterXL_admin down [-p]
clusterXL_admin up [-p]
```

**Configuration Persistence:**
- `-p` flag: Permanent configuration in `$FWDIR/conf/cphaprob.conf`
- Survives reboot and maintains cluster configuration
- Integration with `$FWDIR/conf/cpha_global_pnotes.conf`

## Operational Monitoring

**Status Commands:**
- `cphaprob -l list` (R77.30+)
- `cphaprob -ia list` (R77.20-)
- Displays all critical devices with states and timeouts

**State Transition Triggers:**
- Device timeout expiration without status report
- Explicit 'problem' state notification
- Component failure detection
- Administrative shutdown commands

## Integration Patterns

**Automated Scripts:**
- `clusterXL_admin`: Administrative failover control
- `clusterXL_monitor_ips`: Host monitoring integration
- `clusterXL_monitor_process`: Process state monitoring

**VSX Environment:**
- VSX critical device monitors Virtual System states
- VS0 context manages overall VSX health
- Individual VS contexts monitor VS0 availability

## Connection Potential

Links to: [[cluster-control-protocol-ccp-architecture]], [[cluster-under-load-cul-mechanisms]], [[clusterxl-manual-failover-procedures]], [[cluster-state-synchronization-mechanisms]]

**Source:** SK55081 (Manual failover best practices), Check Point ClusterXL Administration Guide
**Reference:** SK35780 (Host monitoring), SK92904 (Process monitoring)