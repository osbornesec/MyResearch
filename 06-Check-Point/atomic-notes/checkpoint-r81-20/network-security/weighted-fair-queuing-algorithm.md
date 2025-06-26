---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# Weighted Fair Queuing Algorithm

## Core Concept
WFQ (Weighted Fair Queuing) is an innovative, hierarchical algorithm used by Check Point QoS to precisely control bandwidth allocation after traffic has been classified by service or application.

## Technical Implementation
- **Hierarchical Structure**: Supports nested bandwidth allocation across multiple levels
- **Dynamic Allocation**: Constantly adjusts bandwidth allocation based on active connections
- **Traffic Classification Integration**: Works in conjunction with Stateful Inspection to classify traffic
- **Precision Control**: Accurately controls bandwidth distribution according to configured weights

## Performance Characteristics
- **Real-time Adaptation**: Bandwidth allocation changes dynamically as connections open and close
- **Relative Weight System**: Allocates bandwidth based on relative weights between active rules
- **Fairness Guarantee**: Ensures no traffic type is completely starved of bandwidth regardless of weights

## Research Context
Core component of Check Point's QoS implementation that provides the mathematical foundation for bandwidth management and traffic prioritization.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor technical documentation

## Connection Potential
- Links to QoS rule-based traffic management
- Connects to bandwidth guarantee and limit mechanisms
- Relates to traffic classification and policy enforcement