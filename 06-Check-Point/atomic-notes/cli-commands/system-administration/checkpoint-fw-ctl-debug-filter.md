---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-kernel-debug-filters
validation-status: verified
---

# CheckPoint Kernel Debug Filters - Traffic-Specific Debug Filtering

## Core Concept
CheckPoint Kernel Debug Filters are specialized kernel parameters that enable targeted debug message generation for specific traffic patterns. These filters allow administrators to focus debugging efforts on particular IP addresses, ports, or protocols rather than capturing all kernel debug messages, reducing noise and improving troubleshooting efficiency.

## Filter Types and Syntax

### Source IP Address Filters
```bash
simple_debug_filter_saddr_<N> "<IP Address>"
```
- **Purpose**: Filter debug messages by source IP address
- **Parameter Range**: `<N>` can be 1-5 for multiple filters
- **Value Format**: IP address in quotes (e.g., "192.168.1.1")

### Destination IP Address Filters
```bash
simple_debug_filter_daddr_<N> "<IP Address>"
```
- **Purpose**: Filter debug messages by destination IP address
- **Parameter Range**: `<N>` can be 1-5 for multiple filters
- **Value Format**: IP address in quotes

### Source Port Filters
```bash
simple_debug_filter_sport_<N> <1-65535>
```
- **Purpose**: Filter debug messages by source port number
- **Parameter Range**: `<N>` can be 1-5 for multiple filters
- **Value Range**: Port numbers 1-65535

### Destination Port Filters
```bash
simple_debug_filter_dport_<N> <1-65535>
```
- **Purpose**: Filter debug messages by destination port number
- **Parameter Range**: `<N>` can be 1-5 for multiple filters
- **Value Range**: Port numbers 1-65535

### Protocol Filters
```bash
simple_debug_filter_proto_<N> <0-254>
```
- **Purpose**: Filter debug messages by protocol number
- **Parameter Range**: `<N>` can be 1-5 for multiple filters
- **Value Range**: Protocol numbers 0-254 (0 means "any")

## Configuration Methods

### Using fw ctl set str
```bash
# Set source IP filter
fw ctl set str simple_debug_filter_saddr_1 '192.168.1.100'

# Set destination port filter  
fw ctl set str simple_debug_filter_dport_1 '80'

# Set protocol filter (TCP = 6)
fw ctl set str simple_debug_filter_proto_1 '6'
```

### Using FW Monitor -F Parameter
The debug filters are automatically utilized when using fw monitor with the -F parameter:
```bash
fw monitor -F "192.168.1.1,80,192.168.1.100,443,6"
```

### Platform-Specific Syntax
- **Standard Gateway**: `fw ctl set str <filter_name> '<value>'`
- **Scalable Platform (Expert)**: `g_fw ctl set str <filter_name> '<value>'`
- **Scalable Platform (Gaia)**: `fw ctl set str <filter_name> '<value>'`

## Filter Logic and Limitations

### Logical Operations
- **Multiple Filters**: Support up to 5 instances of each filter type
- **Filter Combination**: Logical "OR" operation between multiple filters of same type
- **Cross-Type Logic**: Logical "AND" operation between different filter types

### Configuration Limits
- **Maximum IP Filters**: 5 source + 5 destination IP addresses
- **Maximum Port Filters**: 5 source + 5 destination ports  
- **Maximum Protocol Filters**: 5 protocol numbers
- **Total Filter Instances**: Up to 25 total debug filter parameters

## Verification and Management

### Check Current Filter Values
```bash
# View specific filter
fw ctl get str simple_debug_filter_saddr_1

# Clear filter value
fw ctl set str simple_debug_filter_saddr_1 ''
```

### Permanent Configuration
Filters can be made permanent by editing:
- **Firewall Filters**: `$FWDIR/boot/modules/fwkern.conf`
- **VPN Filters**: `$FWDIR/boot/modules/vpnkern.conf`

## Usage Context

### Troubleshooting Scenarios
- **Targeted Traffic Analysis**: Focus debug on specific connection flows
- **Performance Investigation**: Isolate debug messages for problematic traffic
- **Protocol-Specific Issues**: Filter by protocol for targeted analysis
- **High-Volume Environments**: Reduce debug noise in busy networks

### Integration with Other Tools
- **FW Monitor**: Automatically leverages debug filters with -F parameter
- **Kernel Debug**: Works with `fw ctl debug` for focused message generation
- **SecureXL Debug**: Separate but complementary filtering system

## Research Context
Kernel debug filters are essential for efficient CheckPoint troubleshooting, providing granular control over debug message generation. This functionality is particularly valuable in high-traffic environments where unfiltered debug output would be overwhelming.

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide R81.20
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation with technical specifications

## Connection Potential
- Links to FW Monitor traffic capture methodologies
- Connects to general kernel debug procedures
- Associates with SecureXL acceleration troubleshooting
- Related to performance optimization techniques
- Connects to network troubleshooting workflows