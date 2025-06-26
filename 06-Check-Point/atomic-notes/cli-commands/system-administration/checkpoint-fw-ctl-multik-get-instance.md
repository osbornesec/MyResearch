---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint CoreXL Firewall Instance Connection Mapping Command

## Core Concept
The `fw ctl multik get_instance` command identifies which CoreXL Firewall instance processes specific IPv4 connections, enabling administrators to understand connection distribution across multiple firewall workers for performance analysis and troubleshooting.

## Command Syntax
```bash
# Single connection mapping
fw ctl multik get_instance sip=<Source IPv4 Address> dip=<Destination IPv4 Address> proto=<Protocol Number>

# Range connection mapping  
fw ctl multik get_instance sip=<Source IPv4 Address Start>-<Source IPv4 Address End> dip=<Destination IPv4 Address Start>-<Destination IPv4 Address End> proto=<Protocol Number>
```

## Parameters
- **sip**: Source IPv4 address or range (e.g., 192.168.1.1 or 192.168.1.1-192.168.1.10)
- **dip**: Destination IPv4 address or range
- **proto**: Protocol number (1=ICMP, 6=TCP, 17=UDP, see IANA Protocol Numbers)

## Critical Limitation
**Important**: This command only works when CoreXL Dynamic Dispatcher is disabled (see sk105261). With Dynamic Dispatcher enabled, connection-to-instance mapping is dynamic and cannot be predetermined.

## Usage Examples
```bash
# Check TCP connection instance assignment
[Expert@MyGW:0]# fw ctl multik get_instance sip=192.168.2.3 dip=172.30.241.66 proto=6
protocol: 6
192.168.2.3 -> 172.30.241.66 => 3

# Check range of connections
[Expert@MyGW:0]# fw ctl multik get_instance sip=192.168.2.3-192.168.2.8 dip=172.30.241.66 proto=6
protocol: 6
192.168.2.3 -> 172.30.241.66 => 3
192.168.2.4 -> 172.30.241.66 => 0
192.168.2.5 -> 172.30.241.66 => 3
192.168.2.6 -> 172.30.241.66 => 5
192.168.2.7 -> 172.30.241.66 => 4
192.168.2.8 -> 172.30.241.66 => 5
```

## Output Interpretation
The output shows the firewall instance number (0-N) that processes each connection. Numbers correspond to CoreXL worker instances, helping identify load distribution patterns.

## Research Context
Essential for CoreXL performance troubleshooting when Dynamic Dispatcher is disabled, allowing administrators to verify connection affinity patterns and diagnose load balancing issues.

## Source Quality
- **Primary Source**: CheckPoint R81.20 CLI Reference Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
- Links to CoreXL architecture concepts
- Connects to Dynamic Dispatcher configuration
- Related to performance monitoring and load balancing
- Associates with connection affinity troubleshooting methodologies