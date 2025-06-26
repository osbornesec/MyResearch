---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Search Engine"
source-credibility: 9
management-domain: "discovery"
integration-points: ["database-search", "object-discovery", "policy-navigation", "information-retrieval"]
---

# Search Engine Database Discovery

## Core Management Concept
The Search Engine enables comprehensive searching of the Security Management Server database across all views, supporting discovery of gateways, rules, policies, threats, objects, and tags through flexible search patterns and object name matching.

## Administrative Context
This essential discovery tool enables administrators to quickly locate specific configuration elements within complex security infrastructures, supporting efficient navigation and management of large-scale deployments with extensive policy bases and object repositories.

## Implementation Details
- Available in each SmartConsole view for context-relevant searching
- Supports gateway discovery by name or IP address
- Enables Access Control and NAT rule location
- Provides Threat Prevention profile and threat category search
- Includes object tag-based discovery capabilities
- Supports prefix matching (e.g., "USG" to find "USGlobalHost")
- Enables wildcard searching with asterisk (*) for partial string matches

## Integration Requirements
- Integrates with Security Management Server database for comprehensive search coverage
- Connects to all configuration views for context-appropriate results
- Supports complex object relationships for comprehensive discovery
- Foundation for efficient navigation and management in large-scale security deployments