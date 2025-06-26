---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# Differentiated Services DiffServ Marking

## Core Concept
DiffServ (Differentiated Services) is an architecture for providing different types or levels of service for network traffic by marking packets in the IP header TOS byte to indicate Class of Service for priority treatment on public networks.

## Marking Strategy
- **Enterprise Marking**: Packets marked within enterprise network according to QoS class
- **Public Network Recognition**: Marked packets receive priority treatment on public network segments
- **End-to-End QoS**: Requires DiffServ recognition across all public network infrastructure

## IPSec Integration
**Header Copying Configuration** (in $FWDIR/conf/objects_5_0.c):
- **copy_TOS_to_inner (false)**: Copy DiffServ mark from IPSec header to decrypted packet IP header
- **copy_TOS_to_outer (true)**: Copy DiffServ mark from packet IP header to encrypted IPSec header

## QoS Integration Model
- **Interface-Specific Installation**: DiffServ rules installed only on interfaces where QoS class defined
- **Weight Enforcement**: DiffServ rule weights enforced only on configured interfaces
- **Non-DiffServ Fallback**: Standard "Best Effort" rules handle traffic on non-DiffServ interfaces

## Rule Interaction Principles
- **Interface Isolation**: Only rules installed on same interface interact with each other
- **Selective Deployment**: DiffServ rules require specific QoS class configuration per interface
- **Hybrid Support**: DiffServ and Best Effort rules can coexist in same policy

## Feature Limitations
- **Marking Support**: QoS supports adding DiffServ markings to matching packets
- **Matching Limitation**: QoS does not support matching packets based on existing DiffServ tags
- **One-Way Operation**: Marking applied but not used for traffic classification

## Implementation Requirements
- **Interface Configuration**: QoS class must be defined on interface QoS tab
- **Public Network Coordination**: Requires DiffServ support across all network segments
- **Policy Integration**: DiffServ rules included in standard QoS rulebase structure

## Research Context
Standards-based QoS marking mechanism enabling interoperability with public network QoS implementations and service provider agreements.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor technical documentation

## Connection Potential
- Links to QoS class configuration and interface management
- Connects to IPSec VPN traffic marking and encryption handling
- Relates to service provider QoS agreements and public network integration