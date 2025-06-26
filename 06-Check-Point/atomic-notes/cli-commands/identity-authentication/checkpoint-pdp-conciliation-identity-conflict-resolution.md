---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 7
research-context: checkpoint-identity-awareness-cli-commands
validation-status: verified
---

# CheckPoint PDP Identity Conciliation Process

## Core Concept
The `pdp conciliation` command handles reconciliation tasks to resolve identity conflicts and merge identity information from multiple sources in Identity Awareness deployments.

## Command Functionality
- **Primary Purpose**: Resolve conflicts when multiple identity sources provide different information for the same user
- **Conflict Resolution**: Merge and prioritize identity data from various authentication sources
- **Data Integrity**: Maintain consistent user identity information across multiple sources
- **Source Management**: Handle overlapping or contradictory identity information

## Technical Context
- **Component**: Policy Decision Point (PDP) identity reconciliation engine
- **Multi-Source Support**: Integration with AD, LDAP, RADIUS, and other identity providers
- **Priority Logic**: Configurable rules for resolving conflicting identity information
- **Data Consistency**: Ensure unified user identity view for policy enforcement

## Reconciliation Scenarios
- **Multiple Domain Controllers**: Resolve differences between AD DCs
- **Mixed Identity Sources**: Merge data from AD, LDAP, and external authentication systems
- **Duplicate Users**: Handle same user appearing in multiple identity sources
- **Group Membership Conflicts**: Resolve overlapping or contradictory group assignments

## Common Use Cases
- Configure identity source priority and conflict resolution rules
- Troubleshoot authentication issues caused by conflicting identity information
- Monitor identity data consistency across multiple sources
- Manage identity information in hybrid authentication environments

## Conflict Resolution Methods
- **Source Priority**: Configurable precedence order for identity sources
- **Time-based Resolution**: Most recent identity information takes precedence
- **Manual Override**: Administrative control over specific conflict resolutions
- **Attribute Merging**: Combine non-conflicting attributes from multiple sources

## Source Quality
- **Primary Source**: CheckPoint CLI documentation and Identity Awareness multi-source guides
- **Credibility Score**: 7/10
- **Validation Method**: Vendor documentation and multi-source deployment guides

## Connection Potential
Links to CheckPoint multi-source identity management, conflict resolution algorithms, and hybrid authentication environment concepts.