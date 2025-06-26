---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-vpn-core-processing
validation-status: verified
source: sk104760 - ATRG VPN Core (Site to Site)
---

# Checkpoint VPN Kernel Tables State Management Framework

## Core Concept
Kernel tables (State tables) serve as the memory of the Check Point Stateful Inspection Virtual Machine, implemented as dynamic hash tables in kernel memory to maintain state information required for packet inspection and VPN operations.

## Table Structure and Format
- **Implementation**: Dynamic hash tables in kernel memory
- **Field Values**: Hexadecimal format (convertible to decimal for some tables)
- **Timeout Values**: Present at end of entry when applicable
- **State Information**: Connection states, SA data, peer relationships, and authentication details

## Key VPN-Related Kernel Tables

### Core Connection and SA Tables
- **connections**: Main table holding all active connection data
- **IKE_SA_table**: Contains ISAKMP SA information for Quick Mode negotiation
- **inbound_SPI**: All inbound IPSec SAs with 3600 second expiration
- **outbound_SPI**: All outbound IPSec SAs with peer and SPI indexing

### Cluster Coordination Tables
- **SEP_my_IKE_packet**: IKE forwarding for Load Sharing clusters (120 sec expiration)
- **MSPI_cluster_map**: Maps MSPI between cluster peer members
- **MSPI_cluster_update**: Synchronizes MSPI numbers between cluster members (600 sec expiration)

### VPN Routing and Peer Management
- **vpn_routing**: Possible ranges for all Security Gateways, peer determination
- **peers_count**: Gateway-to-Gateway peer tracking for IPsec tunnel licensing
- **resolved_link**: Resolved link to peer gateway with status information

### Encryption and Decryption Tables
- **encryption_requests**: Connection 5-tuple for connections requiring encryption (90 sec expiration)
- **decryption_pending**: RDP negotiation completion status (obsolete in R77.10+)
- **crypt_resolver_db**: VPN link status with probing protocol on UDP 259

## Table Query Commands
- **TABLE**: Name or ID number of kernel table
- **-s**: Short summary (current and peak connection counts)
- **-f**: Formatted table contents with optional -r for IP resolution
- **-u**: Unlimited output (entire table contents)
- **-m MaxValues**: Limit output to specified number of entries

## Synchronization Behavior
- **Synchronized Tables**: IKE_SA_table, inbound_SPI, outbound_SPI, MSPI_cluster_update
- **Non-Synchronized Tables**: crypt_resolver_db, encryption_requests, SEP_my_IKE_packet (local operation only)
- **Cluster-Specific**: Some tables maintain cluster member identification for coordination

## Connection Potential
- Links to Check Point Stateful Inspection architecture
- Connects with cluster synchronization methodologies
- Relates to VPN performance monitoring procedures
- Associates with kernel debugging and troubleshooting frameworks