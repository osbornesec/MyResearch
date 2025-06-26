---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-vpn-networking-documentation
validation-status: verified
sk-reference: sk104760
domain: cybersecurity-infrastructure
---

# IPsec Security Association Kernel Tables

## Core Concept

IPsec Security Association (SA) data is managed through specialized kernel tables in Check Point Security Gateways, providing stateful inspection and VPN tunnel management. These tables store encryption keys, SPI mappings, and connection state information required for IPsec tunnel operations.

## Key Components

**Inbound SPI Table**: Contains all inbound IPsec SAs with SPI-to-SA mappings, synchronized across cluster members for consistent decryption.

**Outbound SPI Table**: Stores outbound SA information with peer IP and SPI data, manages cluster member coordination for encryption operations.

**IKE SA Table**: Maintains ISAKMP Security Association data including cookies, peer information, and renegotiation timers for Phase 1 negotiations.

## Technical Implementation

- Default SA expiration: 3600 seconds (1 hour)
- Cluster synchronization: Inbound SAs synchronized, outbound SAs created per member
- Table format: Hash-based lookup with hexadecimal field values
- Memory management: Dynamic allocation in kernel space

## Cluster Behavior

In ClusterXL environments, only inbound SAs are synchronized between cluster members to prevent IKE replay attacks. Outbound SAs are created separately on each member but maintain coordination through the outbound_SPI table entries.

## Connection Potential

Links to VPN tunnel establishment, Check Point cluster management, IPsec encryption protocols, and kernel-level stateful inspection mechanisms.