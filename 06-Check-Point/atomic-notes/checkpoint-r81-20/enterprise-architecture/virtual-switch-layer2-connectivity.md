---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-vsx-virtualization-architecture
validation-status: verified
source: Check Point R81.20 VSX Administration Guide
---

# Virtual Switch Layer2 Connectivity

## Core Concept
A Virtual Switch provides Layer 2 connectivity that connects Virtual Systems and facilitates sharing a common physical interface without segmenting the existing IP network. Each Virtual Switch maintains a forwarding table with MAC addresses and their associated ports.

## Advantages Over Virtual Router
When sharing a physical interface via Virtual Switch:
- No need to allocate additional subnet for IP addresses of connected Virtual Systems
- No manual routing configuration required on routers adjacent to the shared interface
- Virtual Systems use IP addresses from the same subnet as the shared interface

## Network Requirements
When only connecting Virtual Systems, the Virtual Switch can be defined without interfaces (unless Virtual System Load Sharing is enabled).

## Research Context
Layer 2 virtualization component that simplifies network topology by avoiding IP subnet segmentation requirements.

## Source Quality
- **Primary Source**: Check Point R81.20 VSX Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
- Links to: Virtual Systems, physical interfaces, MAC forwarding
- Relates to: Network topology simplification, shared interface patterns
- Contrasts with: Virtual Router Layer 3 approach