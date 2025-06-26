---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# RDED Retransmit Detect Early Drop

## Core Concept
RDED (Retransmit Detect Early Drop) is a QoS optimization mechanism that prevents network inefficiencies by detecting TCP retransmissions and preventing transmission of redundant packets when multiple copies are concurrently queued on the same flow.

## Problem Addressed
- **LAN-to-WAN Bottleneck**: Connection bottleneck between high-speed LAN and lower-speed WAN causes TCP retransmissions
- **Redundant Transmission**: Multiple copies of same packet may be queued simultaneously
- **Network Inefficiency**: Redundant packets consume bandwidth without providing value

## Detection Mechanism
- **TCP Stream Analysis**: Monitors TCP streams for retransmission patterns
- **Duplicate Identification**: Identifies when multiple copies of same packet are queued
- **Flow-Based Tracking**: Operates on per-flow basis to maintain connection integrity
- **Real-Time Processing**: Detects and acts on redundant packets during queuing

## Optimization Strategy
- **Early Intervention**: Prevents redundant packet transmission before they consume bandwidth
- **Queue Management**: Removes redundant packets from transmission queues
- **Bandwidth Conservation**: Frees up bandwidth for useful traffic transmission
- **TCP Efficiency**: Improves overall TCP performance over WAN connections

## Performance Benefits
- **Reduced Congestion**: Eliminates unnecessary traffic from network
- **Improved Throughput**: More bandwidth available for productive traffic
- **Better Responsiveness**: Reduced network congestion improves response times
- **Resource Optimization**: Efficient use of available network resources

## Implementation Context
- **Automatic Operation**: Functions transparently without manual configuration
- **TCP-Specific**: Optimized for TCP protocol characteristics and behavior
- **WAN Optimization**: Particularly beneficial for LAN-to-WAN traffic patterns
- **QoS Integration**: Works within broader QoS traffic management framework

## Research Context
Advanced TCP optimization feature that addresses specific inefficiencies in retransmission handling to improve overall network performance.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide (Glossary)
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor technical documentation

## Connection Potential
- Links to TCP traffic optimization and WAN performance enhancement
- Connects to queue management and congestion control mechanisms
- Relates to bandwidth conservation and network efficiency strategies