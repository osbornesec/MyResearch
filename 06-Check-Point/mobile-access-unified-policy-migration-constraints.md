---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point Mobile Access ATRG processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Mobile Access Unified Policy Migration Constraints

## Core Concept
Mobile Access Unified Policy migration from Legacy Policy requires manual rule recreation and has specific architectural constraints that prevent automated migration.

## Migration Limitations
- **No Automatic Migration**: Cannot migrate Legacy Policy rules to Unified Policy automatically
- **Manual Rule Creation**: Administrator must recreate all rules manually in Unified Policy
- **Gateway Exclusivity**: Single gateway cannot run both Unified and Legacy Policy simultaneously
- **Policy Install Requirement**: Switching to Unified Policy requires policy installation

## Configuration Requirements
- **Policy Layer Enablement**: Mobile Access must be enabled on each policy layer containing Mobile Access rules
- **Application Reuse**: Same Mobile Access applications from Legacy Policy should be used in Unified Policy
- **Manual Configuration**: All rule logic must be manually recreated in new policy framework

## Operational Constraints
- **Single Policy Mode**: Gateway limited to either Unified or Legacy, not both
- **Administrative Overhead**: Migration requires significant manual configuration effort
- **Testing Requirements**: New policy rules need thorough validation before deployment

## Best Practice References
- Access Roles and client type configuration guidance in R80.10 Administration Guide
- Best practices for Mobile Access rule definition in official documentation
- Related solution sk116015 for publishing applications in Unified Access Policy mode

## Connection Potential
- Links to: Policy management frameworks, configuration migration challenges
- Contrasts with: Automated migration tools in other security products
- Builds on: Check Point R80+ unified policy architecture evolution