---
state: permanent
type: research-atomic
created: 2025-06-20
source-credibility: 9
research-context: CheckPoint Maestro Identity Awareness analysis
validation-status: verified
connections: ["identity-management", "hyperscale-architecture", "active-directory"]
---

# CheckPoint Maestro Identity Awareness PDP-PEP Architecture

## Core Concept
CheckPoint Maestro implements **Policy Decision Point (PDP) and Policy Enforcement Point (PEP) separation** for distributed identity processing, where PDPs collect user identities from Active Directory and PEPs enforce access controls using synchronized identity sessions.

## Technical Details
- **PDP Functions**: Collects identities via Identity Collector agents, performs LDAP group membership queries, creates identity sessions (user@machine@ip mappings)
- **PEP Functions**: Enforces access controls using sessions shared by PDP across Security Groups
- **Session Propagation**: Push Mode (PEP/PDP colocation) and Smart-Pull Mode (distributed Maestro deployments via HTTPS)
- **HyperSync Integration**: Limits synchronization to active/standby gateways, capping throughput penalty at 1% per module
- **Scalability**: Single PDP supports 35 AD logon servers processing 1,900 events/second

## Research Context
This architecture enables hyperscale identity management while maintaining performance, critical for Zero Trust enforcement in large enterprise environments.

## Source Quality
- **Primary Sources**: CheckPoint R81-R82 Identity Awareness Administration Guides
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation with technical implementation details

## Connection Potential
Links to [[zero-trust-architecture]], [[active-directory-integration]], [[hyperscale-identity-management]]