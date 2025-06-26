---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point VPN Core ATRG processing
validation-status: verified
source: sk104760 - ATRG VPN Core (Site to Site)
---

# ClusterXL IKE Forwarding Mechanism

## Core Concept
ClusterXL implements an IKE forwarding mechanism using the SEP_my_IKE_packet kernel table to ensure entire IKE negotiations are performed against a single cluster member, preventing negotiation fragmentation in Load Sharing mode.

## Problem Addressed
- **Load Sharing Challenge**: IKE packets from VPN peer might be assigned to different cluster members during negotiation
- **Negotiation Consistency**: Entire IKE negotiation must be performed against the same cluster member
- **State Synchronization**: Prevents IKE packets reaching "wrong" cluster member that lacks negotiation awareness

## Technical Implementation
- **Kernel Table**: SEP_my_IKE_packet records each unknown first IKE packet
- **Cookie Tracking**: Each IKE packet contains unique cookie valid during entire IKE Phase 1
- **Message ID Management**: Phase 1 packets use Message ID zero, Phase 2 uses unique IDs per negotiation
- **Ownership Assignment**: First cluster member to handle IKE packet takes ownership of entire negotiation

## Forwarding Logic Process
1. **Packet Reception**: Cluster member receives IKE packet
2. **Table Lookup**: Search SEP_my_IKE_packet for "cookie + msg_id" entry
3. **Ownership Check**: If entry exists, verify which cluster member manages negotiation
4. **Local Processing**: If local member owns negotiation, handle packet normally
5. **Forwarding Decision**: If different member owns negotiation, forward packet to correct peer
6. **New Negotiation**: If no entry exists, current member takes ownership and creates table entry

## High Availability vs Load Sharing Behavior
- **High Availability Mode**: Active cluster member automatically takes ownership
- **Load Sharing Mode**: Dynamic ownership assignment based on first packet reception
- **Stickiness Factor**: Internal cluster decision function ensures consistent peer assignment

## Connection Potential
- Links to: Cluster synchronization, IKE protocol mechanics, load balancing algorithms
- Builds on: Check Point ClusterXL architecture and state table management
- Integrates with: VPN peer relationship management and packet forwarding mechanisms