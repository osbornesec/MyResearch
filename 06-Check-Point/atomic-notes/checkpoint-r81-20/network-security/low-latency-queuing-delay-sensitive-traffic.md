---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# Low Latency Queuing for Delay-Sensitive Traffic

## Core Concept
Low Latency Queuing (LLQ) is a specialized QoS mechanism for delay-sensitive applications like voice and video that require bounded delays rather than standard bandwidth allocation through queuing.

## Problem Addressed
- **Standard WFQ Limitation**: Traditional Weighted Fair Queuing avoids packet drops by maintaining long queues, causing substantial delays
- **Voice/Video Requirements**: Delay-sensitive applications need bounded delays more than bandwidth guarantees
- **Jitter Control**: Long queues create variable delays harmful to real-time applications

## LLQ Implementation
- **Constant Bit Rate**: Specify expected traffic rate for delay-sensitive streams
- **Maximal Delay**: Define upper bound for acceptable packet delay
- **Drop Policy**: Packets exceeding maximal delay are dropped rather than queued
- **Rate Enforcement**: Traffic exceeding constant bit rate is dropped to maintain delay bounds

## Configuration Parameters
- **Constant Bit Rate**: Must match or exceed expected arrival rate to prevent drops
- **Maximal Delay**: Upper limit for packet transmission delay
- **Priority Levels**: Five priority levels for multiple LLQ classes (excluding Expedited Forwarding)

## Priority Handling
- **Inter-Class Priority**: Higher priority LLQ classes forwarded before lower priority
- **Delay Calculation**: Lower priority classes must account for higher priority delays
- **Sequential Definition**: Define higher priority classes before lower priority classes

## Bandwidth Limitations
- **20% Maximum**: Sum of all LLQ constant bit rates cannot exceed 20% of interface bandwidth
- **Best Effort Protection**: Ensures standard traffic doesn't suffer excessive jitter
- **Non-Expandable**: LLQ bandwidth allocation doesn't increase when more capacity available

## Calculation Guidelines
- **Application Analysis**: Determine bit rate per stream for target applications
- **Concurrent Streams**: Multiply single stream rate by expected simultaneous connections
- **Overhead Planning**: Account for protocol overhead and burst characteristics

## Research Context
Critical QoS feature for voice-over-IP, video conferencing, and other real-time applications requiring predictable network performance.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor technical documentation

## Connection Potential
- Links to DiffServ Expedited Forwarding class
- Connects to real-time application performance requirements
- Relates to enterprise voice/video deployment strategies