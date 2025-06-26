---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint fw ctl iflist - Firewall Interface List Display Command

## Core Concept
The `fw ctl iflist` command displays a list of network interfaces that the CheckPoint Firewall kernel has attached to, showing both the interface names and their internal kernel numbers.

## Command Details

### Syntax
```bash
fw ctl iflist
```

### Description
Shows the list with this information:
- The name of interfaces to which the CheckPoint Firewall kernel attached
- The internal numbers of the interfaces in the CheckPoint Firewall kernel

### Key Features
- Lists all detected interfaces, even if no IP addresses are assigned
- Essential for analyzing kernel debug output which shows only internal interface numbers (e.g., ifn=2)
- Maps interface names to kernel internal numbering system

## Usage Examples

### Basic Interface List
```bash
[Expert@MyGW:0]# fw ctl iflist
1 : eth0
2 : eth1
3 : eth2
4 : eth3
5 : eth4
6 : eth5
7 : eth6
8 : eth7
[Expert@MyGW:0]#
```

### Cluster Environment Usage
```bash
[Expert@Member1:0]# fw ctl iflist
1 : eth0
2 : eth1
3 : eth2
[Expert@Member1:0]#
```

## Technical Context
- Used primarily for troubleshooting and kernel debug analysis
- Interface numbers are used internally by CheckPoint kernel for packet processing
- Essential reference for correlating debug output with actual network interfaces
- Required when analyzing SecureXL acceleration configuration per interface

## Related Commands
- `cpstat -f ifconfig os` - OS-level interface configuration
- `cpstat -f interfaces fw` - Firewall interface statistics
- `fw getifs` - Interface information for acceleration configuration

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential
Links to CheckPoint kernel debugging, interface management, SecureXL acceleration, and cluster troubleshooting concepts.