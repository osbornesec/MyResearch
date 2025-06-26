---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# Check Point QoS Software Blade Definition

## Core Concept
QoS (Quality of Service) is a Check Point Software Blade on a Security Gateway that provides policy-based traffic bandwidth management to prioritize business-critical traffic and guarantee bandwidth and control latency.

## Key Capabilities
- **Traffic Prioritization**: Prioritize business-critical traffic like ERP, database, and web services over lower priority traffic
- **Bandwidth Guarantees**: Guarantee bandwidth and control latency for streaming applications (VoIP, video conferencing)
- **Encrypted Traffic Support**: QoS is enabled for both encrypted and unencrypted traffic
- **Remote Access Priority**: Give guaranteed or priority access to specified employees accessing network resources remotely

## Technical Foundation
QoS leverages Check Point's patented Stateful Inspection technology to capture and dynamically update detailed state information on all network traffic. This state information is used to classify traffic by service or application.

## Research Context
Part of Check Point R81.20 QoS Administration Guide covering traffic management and performance optimization for enterprise security gateways.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
- Links to Security Gateway architecture concepts
- Connects to bandwidth allocation and traffic classification
- Relates to VPN traffic management and performance optimization