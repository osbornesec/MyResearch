---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# QoS Bandwidth Guarantees Mechanism

## Core Concept
QoS bandwidth guarantees specify minimum bandwidth allocation as an absolute value (Bytes per second) that is reserved and provided regardless of other traffic demands, supplemented by additional bandwidth based on rule weights.

## Guarantee Allocation Formula
**Total Rule Bandwidth = Guaranteed Bandwidth + Weight-Based Share**
- Guaranteed bandwidth is reserved and subtracted from total available bandwidth
- Remaining bandwidth distributed according to rule weights
- Rule receives guaranteed amount plus proportional share of remaining capacity

## Practical Example
- Rule A: 100 KBps guarantee + Weight 10
- Rule B: Weight 20  
- Link capacity: 190 KBps
- **Result**: Rule A gets 130 KBps (100 guaranteed + 30 from weight), Rule B gets 60 KBps

## Hierarchical Guarantee Rules
- **Parent-Child Relationship**: Sub-rule guarantees cannot exceed parent rule guarantees
- **Sum Constraint**: Parent guarantee must equal or exceed sum of sub-rule guarantees
- **Inheritance**: Sub-rules without guarantees inherit parent rule guarantee

## Guarantee Limitations
- **90% Maximum**: Sum of top-level guarantees cannot exceed 90% of link capacity
- **Connection-Dependent**: Bandwidth reserved only when connections match the guarantee rule
- **Speed Adaptation**: Unused guaranteed bandwidth made available to other connections

## Per-Connection Guarantees
- **Individual Allocation**: Specify guaranteed bandwidth per connection rather than per rule
- **Additional Connections**: Option to accept connections beyond guaranteed count
- **Inheritance Model**: Sub-rules inherit parent per-connection guarantees if not specified

## Research Context
Critical QoS mechanism ensuring minimum service levels for business-critical applications while maintaining efficient bandwidth utilization.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official documentation with mathematical examples

## Connection Potential
- Links to bandwidth limit mechanisms and guarantee-limit interaction
- Connects to sub-rule hierarchical bandwidth allocation
- Relates to enterprise service level agreement implementation