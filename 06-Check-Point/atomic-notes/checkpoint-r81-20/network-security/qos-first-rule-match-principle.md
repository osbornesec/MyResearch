---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# QoS First Rule Match Principle

## Core Concept
QoS operates on a first rule match principle where each connection is examined against the QoS Policy rulebase and receives bandwidth allocation according to the action defined in the first rule that matches the connection criteria.

## Rule Matching Logic
- **Sequential Evaluation**: Rules evaluated from top to bottom in rulebase order
- **First Match Wins**: Connection assigned to first rule meeting all criteria (source, destination, service)
- **No Further Processing**: Subsequent matching rules ignored after first match
- **Default Fallback**: Default rule at bottom catches unmatched connections

## Practical Example
**Rulebase Order:**
1. Web Rule (Any → Any, HTTP, Weight 35)
2. Marketing Rule (Marketing → Any, Any, Weight 30)

**Result**: Marketing HTTP connection matches Web Rule (first match), receives Weight 35 instead of Marketing-specific Weight 30.

## Rule Order Impact
- **Priority Positioning**: More specific rules must be placed above general rules
- **Service vs Source**: Service-specific rules typically placed before source-specific rules
- **Granular Control**: Detailed matching rules positioned higher in rulebase

## Sub-Rule Solution
- **Hierarchical Matching**: Use sub-rules to provide granular control within broader categories
- **Marketing HTTP Sub-Rule**: Place Marketing-specific rule as sub-rule under Web Rule
- **Best of Both**: Achieve both service-based and source-based prioritization

## Design Strategy
- **Rule Placement Planning**: Consider rule interaction during rulebase design
- **Specificity Ordering**: Place more specific rules higher in rulebase
- **Sub-Rule Implementation**: Use hierarchical structure for complex prioritization

## Common Conflicts
- **Service vs User**: HTTP rule vs Marketing rule for Marketing HTTP traffic
- **Network vs Application**: Network-based rules vs application-specific rules
- **General vs Specific**: Broad catch-all rules vs targeted priority rules

## Research Context
Fundamental QoS policy processing principle that determines traffic classification and bandwidth allocation based on rulebase structure and order.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official documentation with practical examples

## Connection Potential
- Links to QoS sub-rule hierarchical structure and policy design
- Connects to traffic classification and bandwidth allocation mechanisms
- Relates to rulebase optimization and policy planning methodologies