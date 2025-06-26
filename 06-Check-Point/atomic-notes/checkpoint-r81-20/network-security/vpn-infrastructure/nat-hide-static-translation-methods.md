---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-networking-documentation
validation-status: verified
sk-reference: sk30557
domain: cybersecurity-infrastructure
---

# NAT Hide and Static Translation Methods

## Core Concept

Network Address Translation (NAT) in Check Point implements two primary translation methods: Hide NAT for many-to-one address mapping and Static NAT for one-to-one address mapping, each serving distinct network architecture requirements.

## Hide NAT Characteristics

**Many-to-One Translation**: Multiple internal private addresses share a single public IP address, typically the Security Gateway's external interface IP.

**Unidirectional Connectivity**: Connections can only be initiated from the protected (internal) network side, preventing inbound connection establishment.

**Port Multiplexing**: Uses port translation to distinguish between multiple internal hosts sharing the same public IP address.

## Static NAT Characteristics

**One-to-One Translation**: Each internal private address maps to a dedicated public address, maintaining address relationship consistency.

**Bidirectional Connectivity**: Allows connection initiation from both internal and external networks, enabling server accessibility from Internet.

**Virtual IP Addressing**: Public addresses are virtual IPs that don't belong to physical interfaces but are routed to the Security Gateway.

## Automatic ARP Configuration

Security Gateway automatically responds to ARP requests for translated addresses, eliminating manual ARP configuration requirements and route management overhead.

## Rule Base Integration

NAT configuration automatically generates rules in the Network Translation Rule Base with priority ordering: Pre-manual rules, Automatic rules (Static higher priority than Hide), Post-manual rules.

## Connection Potential

Links to network address management, firewall rule bases, server accessibility design, and Check Point policy automation mechanisms.