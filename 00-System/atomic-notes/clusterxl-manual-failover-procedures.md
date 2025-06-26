---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-clustering-investigation
validation-status: verified
connections: 3
review-frequency: monthly
domain: infrastructure-security
---

# ClusterXL Manual Failover Procedures

## Core Concept

Manual (controlled) failover in ClusterXL enables administrators to deliberately trigger cluster member state changes while maintaining full connectivity, using the admin_down critical device mechanism to minimize operational interference.

## Technical Framework

**Best Practice Approach:**
- Create temporary critical device rather than disabling production components
- Use `clusterXL_admin` script for standardized failover procedures
- Maintain connectivity during state transitions
- Provide administrative feedback and state verification

**Administrative Commands:**
```bash
# Initiate manual failover
clusterXL_admin down [-p]

# Restore member to active pool
clusterXL_admin up [-p]

# Manual critical device registration
cphaprob -d admin_down -t 0 -s problem [-p] register
```

## Implementation Methods

**Critical Device Strategy:**
- Registers "admin_down" critical device
- Reports 'problem' state to trigger failover
- Non-disruptive to actual cluster services
- Reversible through state change to 'ok'

**Persistence Options:**
- `-p` flag: Permanent configuration survival across reboots
- Automatic addition to `$FWDIR/conf/cphaprob.conf`
- Prevents accidental recovery during maintenance

## Operational Verification

**State Monitoring:**
- `cphaprob state` - Verify member state changes
- `cphaprob -l list` - Confirm admin_down device registration
- `clusterXL_admin` provides built-in status feedback
- Monitor cluster logs for transition events

**Recovery Procedures:**
- `clusterXL_admin up` restores normal operation
- Automatic critical device cleanup
- State verification and confirmation prompts

## Integration Patterns

**Maintenance Scenarios:**
- Planned hardware maintenance
- Software upgrade procedures
- Network reconfiguration activities
- Performance testing isolation

**Alternative Methods (Not Recommended):**
- Interface cable disconnection
- Security policy unloading
- FWD daemon termination
- Direct component shutdown

## Platform Considerations

**Special Cases:**
- Security Gateway 80 appliances: Different script location
- 3rd party clusters: IPSO Voyager configuration required
- VSX environments: VSLS mode considerations
- Multi-domain deployments: Policy installation coordination

## Connection Potential

Links to: [[critical-device-pnote-system]], [[cluster-control-protocol-ccp-architecture]], [[high-availability-state-management]]

**Source:** SK55081 (Manual failover best practices), Check Point ClusterXL Administration Guide
**Reference:** SK65060 (SG-8x procedures), SK95133 (VSLS limitations)