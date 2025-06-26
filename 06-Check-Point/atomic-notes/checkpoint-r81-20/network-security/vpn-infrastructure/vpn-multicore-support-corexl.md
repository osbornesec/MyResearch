---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-vpn-networking-documentation
validation-status: verified
sk-reference: sk118097
domain: cybersecurity-infrastructure
---

# VPN MultiCore Support in CoreXL

## Core Concept

IPsec VPN MultiCore feature distributes VPN traffic inspection across all CoreXL Firewall instances starting in R80.10, enabling parallel processing of VPN tunnels for improved performance and scalability.

## Architecture Implementation

**Default Enablement**: Feature is enabled by default and cannot be disabled, representing a fundamental shift in VPN traffic handling architecture.

**Traffic Distribution**: VPN tunnels are automatically distributed across all available CoreXL FW instances, with each instance maintaining its own set of inbound and outbound SPIs.

## Monitoring Commands

**`vpn tu mstats`**: Displays SPI distribution across CoreXL instances showing number of inbound/outbound SPIs per instance.

**`vpn tu tlist`**: Shows detailed tunnel information including peer details, encryption methods, and instance assignments.

## Performance Characteristics

MultiCore support enables linear scaling of VPN performance with the number of CoreXL instances, moving from single-core VPN processing to distributed multi-core architecture.

## Legacy Considerations

The old single-core VPN processing model is completely replaced. Disabling multicore is not supported as it would create an untested configuration path.

## Connection Potential

Links to CoreXL architecture, VPN performance optimization, parallel processing systems, and Check Point scaling mechanisms.