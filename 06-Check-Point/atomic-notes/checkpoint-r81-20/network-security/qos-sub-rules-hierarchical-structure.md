---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# QoS Sub-Rules Hierarchical Structure

## Core Concept
QoS sub-rules are nested rules within parent rules that enable granular bandwidth allocation within broader traffic categories, creating hierarchical traffic management structures.

## Hierarchical Allocation Model
- **Top-Down Distribution**: Parent rule receives bandwidth allocation, then distributes to sub-rules based on their weights
- **Nested Support**: Sub-rules can contain their own sub-rules for multi-level hierarchies
- **Proportional Sharing**: Sub-rule bandwidth allocated proportionally within parent rule allocation

## Practical Example
- Web Rule (Weight 20): Receives 20% of total bandwidth
  - Marketing HTTP (Weight 10): Gets 10/11 of Web Rule bandwidth  
  - Default Sub-Rule (Weight 1): Gets 1/11 of Web Rule bandwidth
- **Result**: Marketing HTTP receives higher priority within HTTP traffic category

## Bandwidth Constraint Rules
- **Parent Limitation**: Sub-rules cannot allocate more bandwidth than parent rule receives
- **Guarantee Inheritance**: Sub-rule guarantees must not exceed parent rule guarantees
- **Nested Constraints**: Same rules apply recursively to nested sub-rules

## Traffic Classification Flow
- **First Match**: Connection matches top-level rule first
- **Sub-Rule Evaluation**: If parent rule has sub-rules, sub-rules checked for more specific match
- **Default Handling**: If no sub-rule matches, default sub-rule applied

## VPN Traffic Separation
- **Encryption-Based Rules**: Use "Apply rule only to encrypted traffic" option
- **Traffic Segregation**: VPN rules at top of rulebase, non-VPN rules below
- **Granular Control**: Sub-rules within VPN rules classify encrypted traffic types

## Implementation Benefits
- **Service Differentiation**: Separate bandwidth allocation within same traffic type
- **User Prioritization**: Different bandwidth for different user groups accessing same services
- **Application Granularity**: Fine-grained control over specific applications or protocols

## Research Context
Advanced QoS feature enabling sophisticated traffic management hierarchies that balance broad categorization with detailed prioritization requirements.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official documentation with hierarchy examples

## Connection Potential
- Links to QoS rule weight calculation and bandwidth allocation
- Connects to VPN traffic management and encryption handling
- Relates to enterprise traffic classification methodologies