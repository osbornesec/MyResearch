---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# QoS Policy Types Express vs Recommended

## Core Concept
Check Point QoS provides two policy types with different feature sets: Express for basic QoS policies and Recommended for advanced policies with full QoS feature capabilities.

## Express Policy Features
- **Quick Implementation**: Rapidly create basic QoS policies
- **Limited Feature Set**: IPv6 support, weights, whole rule limits, logging, accounting
- **Basic High Availability**: Standard load sharing support
- **Hardware Acceleration**: Not supported with Express policies

## Recommended Policy Features (Default)
- **Complete Feature Set**: All Express features plus advanced capabilities
- **Per-Connection Controls**: Guarantees and limits on individual connections
- **Advanced Queuing**: Low Latency Queuing (LLQ) for delay-sensitive applications
- **DiffServ Support**: Integrated Differentiated Services marking
- **Sub-Rules**: Hierarchical rule structures for granular control
- **Advanced Matching**: URI resources and DNS string matching
- **Hardware Acceleration**: SecureXL and CoreXL support
- **Enterprise Features**: VSX support and SmartLSM clusters

## Selection Criteria
- **Express**: Choose for simple bandwidth allocation scenarios
- **Recommended**: Required for voice/video applications, complex hierarchies, enterprise features

## Research Context
Policy type selection impacts available QoS features and determines implementation complexity for traffic management scenarios.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation comparison table

## Connection Potential
- Links to QoS implementation workflow and planning
- Connects to hardware acceleration and performance optimization
- Relates to enterprise deployment architecture decisions