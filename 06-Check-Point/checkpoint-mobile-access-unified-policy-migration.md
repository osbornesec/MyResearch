---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-mobile-access-processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Checkpoint Mobile Access Unified Policy Migration

## Core Concept
Mobile Access blade supports migration from Legacy Policy to Unified Policy in R80.10+, requiring manual rule recreation and policy installation, with specific constraints on gateway configuration and policy layer management.

## Migration Requirements
- **Manual Rule Creation**: Cannot migrate Legacy Policy rules automatically to Unified Policy
- **Administrator Responsibility**: Must manually recreate all Mobile Access rules in Unified Policy framework
- **Policy Installation**: Requires policy install to switch from Legacy to Unified Policy
- **Application Reuse**: Same Mobile Access applications from Legacy Policy can be used in Unified Policy

## Configuration Constraints
- **Gateway Exclusivity**: Single Gateway cannot be set to both Unified and Legacy Policy simultaneously
- **Policy Layer Enablement**: Administrator must enable Mobile Access on each Policy layer containing Mobile Access rules/applications
- **Layer-Specific Configuration**: Mobile Access must be explicitly enabled per policy layer in Unified Policy

## Implementation Considerations
- **Default State**: Mobile Access blade defaults to Legacy Policy mode
- **Switch Process**: Administrator-initiated switch to Unified Policy requires policy installation
- **Rule Recreation**: All existing Legacy Policy rules must be manually recreated
- **Application Compatibility**: Existing Mobile Access applications remain compatible with Unified Policy

## Best Practices Reference
- Access Roles and client type configuration via Access Roles for Remote Access section
- Rule definition best practices via Best Practices for Rules section in R80.10 Administration Guide
- Related solution sk116015 for publishing applications in Unified Access Policy mode

## Connection Potential
- Links to Unified Policy architecture patterns
- Connects with Legacy Policy migration methodologies
- Relates to policy layer management procedures
- Associates with Access Control Policy configuration frameworks