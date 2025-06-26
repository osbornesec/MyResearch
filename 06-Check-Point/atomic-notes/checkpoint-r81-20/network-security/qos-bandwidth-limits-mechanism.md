---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# QoS Bandwidth Limits Mechanism

## Core Concept
QoS bandwidth limits define maximum bandwidth allocation for rules or individual connections, preventing any traffic type from consuming excessive network resources regardless of available capacity.

## Limit Types
- **Rule Limits**: Maximum bandwidth allocated to all connections matching a rule combined
- **Per-Connection Limits**: Maximum bandwidth allocated to individual connections within a rule
- **Constraint Relationship**: Per-connection limit cannot exceed rule limit

## Hierarchical Limit Rules
- **Sub-Rule Constraints**: If limits defined for all sub-rules, parent rule limit cannot exceed sum of sub-rule limits
- **Bandwidth Conservation**: Cannot allocate more bandwidth to parent than determined by sub-rule limits
- **Inheritance**: Sub-rules without limits inherit constraints from parent rules

## Guarantee-Limit Interaction
- **Minimum Constraint**: Rule limit must not be less than rule guarantee
- **Starvation Risk**: When limit equals guarantee, sub-rules without guarantees may receive no bandwidth
- **Resource Contention**: Equal guarantee-limit creates zero surplus for distribution

## Practical Example: Problematic Configuration
- Rule A: 100 KBps guarantee, 100 KBps limit
- Sub-rule A1: 100 KBps guarantee (consumes full parent allocation)
- Sub-rule A2: No guarantee (receives zero bandwidth when A1 active)

## Best Practices
- **Buffer Allocation**: Maintain gap between guarantees and limits
- **Sub-Rule Planning**: Ensure parent limits exceed sum of sub-rule guarantees
- **Bandwidth Headroom**: Leave bandwidth available for weight-based distribution

## Performance Impact
- **Traffic Shaping**: Limits provide upper bounds for traffic shaping
- **Burst Control**: Prevent temporary traffic bursts from overwhelming links
- **Resource Protection**: Protect critical applications from bandwidth monopolization

## Research Context
Essential QoS mechanism for preventing bandwidth abuse and ensuring fair resource distribution across multiple traffic types and applications.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official documentation with configuration examples

## Connection Potential
- Links to bandwidth guarantee mechanisms and rule weight allocation
- Connects to sub-rule hierarchical bandwidth management
- Relates to traffic shaping and performance optimization strategies