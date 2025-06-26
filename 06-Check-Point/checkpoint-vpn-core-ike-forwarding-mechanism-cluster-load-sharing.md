---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-vpn-core-processing
validation-status: verified
source: sk104760 - ATRG VPN Core (Site to Site)
---

# Checkpoint VPN Core IKE Forwarding Mechanism Cluster Load Sharing

## Core Concept
IKE forwarding mechanism in Check Point Load Sharing clusters ensures entire IKE negotiations are performed against one cluster member using SEP_my_IKE_packet kernel table, preventing negotiation fragmentation when VPN peer packets reach different cluster members.

## Technical Implementation
- **Kernel Table**: Uses SEP_my_IKE_packet table to record unknown first IKE packets
- **Cookie Management**: Each IKE packet contains unique cookie plus Message ID (Phase 1 = zero, Phase 2 = unique per negotiation)
- **Ownership Assignment**: Cluster member writes "cookie + msg_id" with its IP address as cluster peer
- **Forwarding Logic**: IKE packets reaching "wrong" cluster member are forwarded to "right" cluster member

## Inbound IKE Flow Process
1. **Packet Reception**: Cluster member receives IKE packet
2. **High Availability Mode**: Active member takes ownership by writing to SEP_my_IKE_packet table
3. **Load Sharing Mode**: Member resolves cookie and Message ID from IKE packet
4. **Table Search**: Search SEP_my_IKE_packet for matching "cookie + msg_id" entry
5. **Existing Entry**: Check cluster peer managing IKE negotiation
6. **Local Handling**: If local machine manages negotiation, handle normally
7. **Remote Forwarding**: If remote member manages, forward packet to peer member
8. **New Entry**: If no entry exists, take ownership by creating table entry

## Outbound IKE Flow Process
1. **Negotiation Initiation**: Cluster member needs to initiate IKE negotiation
2. **Table Check**: Verify no existing entry with "cookie + msg_id" key
3. **Entry Creation**: Set new entry with own IP address as cluster peer

## Cluster Coordination Features
- **3rd Party Clusters**: Uses Sync interface IP for unique addressing when cluster VIP matches member IP
- **Phase 2 Handling**: Forwards Phase 2 packets to member that performed Phase 1 when SAs not synchronized
- **Synchronization**: Only inbound SAs synchronized, outbound SAs created separately per member to prevent IKE replay attacks

## Connection Potential
- Links to cluster load balancing algorithms
- Connects with IKE negotiation state management
- Relates to SA synchronization methodologies
- Associates with network failover and redundancy patterns