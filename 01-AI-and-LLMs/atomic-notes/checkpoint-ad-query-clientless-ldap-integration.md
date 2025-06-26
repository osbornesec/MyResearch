---
state: permanent
type: research-atomic
created: 2025-06-20
source-credibility: 9
research-context: CheckPoint Identity Awareness implementation
validation-status: verified
connections: ["ldap-integration", "identity-mapping", "enterprise-authentication"]
---

# CheckPoint AD Query Clientless LDAP Integration

## Core Concept
CheckPoint's **AD Query method provides clientless WMI-based Active Directory Security Event Log polling** for identity mapping with zero client footprint, though it cannot detect user logouts leading to potential session staleness during IP reuse.

## Technical Details
- **Implementation**: WMI polling of AD Domain Controller Security Event Logs
- **Default Query Interval**: 1 second (configurable via adlogconfig)
- **Session Format**: JSON user/machine/IP mappings with 240-minute default cache
- **Multi-User Host Detection**: Marks IPs when >X users log in (default: 5 users)
- **Limitation**: Cannot detect logout events, risking stale sessions
- **Performance**: Supports up to 1,900 login events per second per collector

## Research Context
This approach dominates enterprise deployments due to its agentless nature, though organizations with shared devices or high IP churn may require Identity Agents for logout detection.

## Source Quality
- **Primary Sources**: CheckPoint Identity Awareness Administration Guides, technical configuration documentation
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint technical documentation with configuration parameters

## Connection Potential
Links to [[clientless-authentication]], [[session-management-challenges]], [[enterprise-identity-scaling]]