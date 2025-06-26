---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point VPN Core ATRG processing
validation-status: verified
source: sk104760 - ATRG VPN Core (Site to Site)
---

# IPSec Security Association Kernel Tables

## Core Concept
Check Point implements IPSec Security Associations through specialized kernel tables (IKE_SA_table, inbound_SPI, outbound_SPI) that maintain encryption state information and enable stateful inspection of VPN traffic.

## IKE_SA_table Structure
- **Purpose**: Contains information about all ISAKMP Security Associations
- **Usage**: Conducts IKE Quick Mode negotiation of IPSec SA
- **Expiration**: 3600 seconds default timeout
- **Cluster Sync**: Synchronized between cluster members
- **Key Components**: Peer IP, Cookies (Initiator/Responder), IKE SA data, flags, renegotiation time

## Inbound_SPI Table
- **Purpose**: Contains all Inbound IPSec SAs resulting from IKE negotiation
- **Key Structure**: SPI (Security Parameter Index) maps to SA, Host IP, User Peer Method, Peer IP
- **Expiration**: 3600 seconds default timeout
- **Cluster Sync**: Synchronized between cluster members
- **Security Function**: Enables decryption and authentication of inbound encrypted packets

## Outbound_SPI Table
- **Purpose**: Contains all Outbound IPSec SAs for encryption
- **Key Components**: Peer IP + Outbound SPI maps to MSPI, Cookies, SA ID, User Peer ID
- **Cluster Behavior**: Load Sharing mode synchronizes inbound SAs only, outbound SAs created separately per member
- **Anti-Replay**: Prevents IKE replay attacks through separate outbound SA creation

## Security Architecture Integration
- **State Table Foundation**: Kernel tables serve as "memory" for Firewall Virtual Machine
- **Stateful Inspection**: Tables enable proper packet inspection and VPN state tracking
- **Dynamic Hash Implementation**: Implemented as dynamic hash tables in kernel memory
- **Field Format**: All values in hexadecimal except timeout values

## Connection Potential
- Links to: Kernel memory management, cryptographic state machines, cluster synchronization
- Builds on: IPSec protocol specifications and Check Point stateful inspection technology
- Integrates with: VPN peer management and encryption/decryption processing pipelines