---
created: 2025-06-17T12:01:00Z
state: permanent
type: atomic-note
source: sk167553 - Performance Investigation Procedure
source-credibility: 9
research-context: Check Point Security Gateway Performance
validation-status: verified
connections: 5
---

# Check Point Basic Health Check Procedure

## Core Concept
Systematic health verification protocol for Check Point Security Gateways focusing on network stability, frame loss detection, and system stability assessment before deep performance investigation.

## Network Health Verification

### Frame Loss Detection
- **Ping testing**: `ping -s 1400 [destination]` to test through-firewall connectivity
- **Interface stability**: `ifconfig -a` checking for nonzero "carrier" values
- **Sync network health**: `cphaprob syncstat` with KPI threshold >1% packet loss

### Network Statistics Analysis
**Command**: `netstat -ni | grep -v "."`

**Critical Metrics**:
- **RX-DRP**: Must be <0.1% (indicates SND overload or Multi-Q need)
- **RX-ERR**: Should be near zero, not incrementing (physical network problems)
- **RX-OVR**: Near zero, not incrementing (overloaded interface needs bonding)

## System Stability Assessment

### Cluster Health
- **Status verification**: `cphaprob state`
- **Operational stability**: Last failover timing and cluster operating mode
- **Synchronization health**: Packet loss/retransmission rates

### Hardware Monitoring
- **Sensor status**: `cpstat -f sensors os`
- **Critical checks**: Failed fans causing CPU down-clocking, voltage/temperature problems
- **Performance impact**: Hardware issues directly affect processing capacity

### Connection and Memory Status
- **IPv4 statistics**: `fw ctl pstat`
- **IPv6 statistics**: `fw6 ctl pstat`
- **Fragmentation tracking**: Memory usage and connection table utilization

## KPI Thresholds
- Frame loss <0.1%
- Sync packet loss <1%
- Hardware sensors within normal ranges
- No actively incrementing error counters

## Connection Potential
Links to Check Point performance troubleshooting methodology, SecureXL optimization techniques, and cluster high availability best practices.