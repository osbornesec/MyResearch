---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-clustering-investigation
validation-status: verified
connections: 5
review-frequency: monthly
domain: infrastructure-security
---

# Cluster Under Load CUL Mechanisms

## Core Concept

Cluster Under Load (CUL) mechanism prevents cluster flapping during high CPU utilization by temporarily freezing cluster state changes and pnote failure detection when system load exceeds configurable thresholds.

## Technical Framework

**Primary CUL Parameters:**
- `fwha_cul_mechanism_enable`: Master enable/disable (default: 1)
- `fwha_cul_member_cpu_load_limit`: CPU threshold percentage (default: 80%)
- `fwha_cul_cluster_short_timeout`: Minimum freeze duration (default: 10 seconds)
- `fwha_cul_member_long_timeout`: Maximum freeze duration (default: 180 seconds)

**Policy Installation Protection:**
- `fwha_cul_policy_freeze_timeout_millisec`: Monitor period (default: 30 seconds)
- `fwha_cul_policy_freeze_event_timeout_millisec`: Event freeze duration (default: 15 seconds)

## Implementation Logic

**Load Detection:**
- Each member monitors local CPU load independently
- Load information advertised between cluster members
- Threshold-based activation (80% CPU utilization default)
- HTU (HA Time Unit) = 100 milliseconds timing base

**State Freeze Behavior:**
- Prevents pnote failures from triggering failover
- Blocks CCP-based state changes during load events
- Maintains cluster stability during temporary spikes
- Logs CUL events after delay threshold (`fwha_cul_cluster_log_delay_millisec`)

## Operational Scenarios

**Policy Installation Flapping:**
- Common causes: FWD/CPHAD pnote failures during policy load
- Standby promotion while Active member recovers
- CUL prevents premature failover during installation

**Runtime Load Spikes:**
- CPU-intensive operations triggering false failures
- Network congestion causing CCP packet loss
- Temporary resource exhaustion events

## Configuration Management

**Parameter Adjustment:**
```bash
# Check current CUL status
fw ctl get int fwha_cul_mechanism_enable

# Modify CPU threshold
fw ctl set int fwha_cul_member_cpu_load_limit 85

# Permanent configuration
# Add to $FWDIR/boot/modules/fwkern.conf
```

**Version Compatibility:**
- R75.40VS and higher (excluding R75.45, R75.46)
- Different default values for Scalable Platforms
- Not applicable to OPSEC/3rd party clusters

## Integration Patterns

**Related Mechanisms:**
- Complement to dead timeout multipliers
- Integration with interface connectivity tolerance
- Policy update timeout factor coordination
- Freeze state machine timeout alignment

## Connection Potential

Links to: [[critical-device-pnote-system]], [[cluster-flapping-prevention-strategies]], [[cluster-control-protocol-ccp-architecture]], [[clusterxl-performance-tuning-parameters]], [[high-availability-timeout-mechanisms]]

**Source:** SK92723 (Cluster flapping prevention), Check Point ClusterXL Administration Guide
**Reference:** SK32488 (Freeze timeouts), SK63163 (Policy timeouts)