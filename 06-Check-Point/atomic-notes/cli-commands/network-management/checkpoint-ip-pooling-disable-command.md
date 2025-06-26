---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 7
research-context: CheckPoint CLI specialized commands
validation-status: verified
---

# CheckPoint IP Pooling Disable Command

## Core Concept
The `ip_pooling disable` command deactivates IP address pooling functionality on CheckPoint systems, preventing dynamic IP allocation for NAT and VPN services.

## Functional Impact
**Disabled Operations**:
- Dynamic IP assignment for Hide NAT configurations
- VPN client IP allocation from predefined pools
- Automatic address translation using pool resources
- Load balancing across multiple IP addresses

**System Behavior Changes**:
- Reverts to static IP assignment methods
- Disables pool-based NAT operations
- Requires manual IP configuration for new connections
- May affect existing client connections using pooled addresses

## Administrative Context
**When to Disable**:
- Troubleshooting IP allocation conflicts
- Switching to static IP assignment methods
- Maintenance operations requiring fixed addressing
- Security audits requiring deterministic IP assignment

**Operational Considerations**:
- May disrupt active VPN client connections
- Requires alternative IP assignment strategy
- Should be coordinated with network administration
- May impact NAT policy effectiveness

## Recovery Procedures
```bash
# Re-enable IP pooling when ready
ip_pooling enable

# Verify pool status
ip_pooling stat
```

## Related Configuration
Links to Hide NAT policy configuration, VPN client management, and network address translation disable procedures.

## Source Quality
- **Primary Source**: CheckPoint system administration analysis
- **Credibility Score**: 7/10
- **Validation Method**: Cross-reference with NAT and VPN configuration guides

## Connection Potential
Connects to IP pooling enable operations, NAT troubleshooting procedures, and VPN client connectivity management systems.