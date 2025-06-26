---
created: 2025-06-17T12:06:00Z
state: permanent
type: atomic-note
source: sk93454 - Increasing ClusterXL dead timeout
source-credibility: 9
research-context: Check Point ClusterXL High Availability
validation-status: verified
connections: 3
---

# Check Point ClusterXL Dead Timeout Configuration

## Core Concept
ClusterXL dead timeout determines the interval before considering a peer cluster member unresponsive, with a default 3-second threshold using specialized HA Time Units (HTU) where 1 HTU = 100 milliseconds.

## Dead Timeout Mechanism
- **Default interval**: 3 seconds (recommended value)
- **Time unit**: HTU (HA Time Unit) = 100 milliseconds = 0.1 second
- **Failover trigger**: Missing CCP (Cluster Control Protocol) packets beyond threshold
- **Detection method**: Active monitoring of peer cluster member responsiveness

## Timeout Adjustment (R75.47, R77+)

### Parameter Configuration
- **Kernel parameter**: `fwha_dead_timeout_multiplier`
- **Function**: Sets dead timeout to X seconds when parameter = X
- **Legacy requirement**: R75.47/R77 requires matching `fwha_if_connectivity_tolerance` value
- **Recommended value**: 30 HTU for both parameters in legacy versions

### Implementation Commands
```bash
# Check current value
fw ctl get int fwha_dead_timeout_multiplier

# Set temporary value (non-persistent)
fw ctl set int fwha_dead_timeout_multiplier VALUE

# Permanent configuration
# Follow sk26202 for kernel parameter persistence
```

## Failure Detection Indicators

### Log Messages
Cluster member not receiving CCP packets generates:
```
cluster_info: (ClusterXL) member 1 (10.0.66.1) is down.
cluster_info: (ClusterXL) member 2 (10.0.66.2) is active.
```

### Debug Output
Kernel debug (`fw ctl debug -m cluster + stat`) shows:
```
check_other_machine_activity: ID 0 (state ACTIVE) is dying
check_other_machine_activity: ID 0 (state ACTIVE) is dead
```

## Version-Specific Implementation
- **R76, R75.46 and lower**: Different configuration method required
- **R75.47, R77+**: Uses `fwha_dead_timeout_multiplier` parameter
- **R77.10+**: Integrated Cluster Under Load (CUL) mechanism parameters

## Related Mechanisms
- **Interface connectivity tolerance**: Must match dead timeout in legacy versions
- **Cluster Under Load (CUL)**: Advanced flapping prevention mechanism
- **Virtual System dead timeout**: Separate timeout for VSX environments

## Connection Potential
Links to Check Point ClusterXL troubleshooting methodologies, cluster flapping prevention techniques, and high availability monitoring best practices.