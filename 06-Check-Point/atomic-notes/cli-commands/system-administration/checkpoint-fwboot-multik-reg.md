---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-corexl-boot-management
validation-status: verified
source: "Check Point R81.20 CLI Reference Guide - Admin Foundation"
---

# CheckPoint fwboot multik_reg CoreXL Registration Address Display

## Core Concept
The `fwboot multik_reg` command displays the internal memory address of the registration function for a specified CoreXL Firewall instance, providing low-level diagnostic information for CoreXL architecture troubleshooting.

## Description
Shows the internal memory address of the registration function for the specified CoreXL Firewall instance. This command is designated for Check Point internal use only and provides deep system-level diagnostic information about CoreXL instance registration.

## Syntax
```bash
[Expert@HostName:0]# $FWDIR/boot/fwboot multik_reg <Number of CoreXL Firewall instance> {ipv4 | ipv6} [-d]
```

## Parameters
- **No Parameters**: Shows built-in help with available parameters
- **Number of CoreXL Firewall instance**: Specifies the ID number of the CoreXL Firewall instance
- **ipv4**: Specifies to work with IPv4 CoreXL Firewall instances  
- **ipv6**: Specifies to work with IPv6 CoreXL Firewall instances
- **-d**: Debug mode flag (optional)

## Usage Context
- **Expert Mode Required**: Must be executed from Expert mode only
- **Internal Use Only**: Command designated for Check Point internal diagnostics
- **CoreXL Architecture**: Used for low-level CoreXL instance registration troubleshooting
- **Memory Address Inspection**: Provides internal memory mapping information for firewall instances

## Example Output
```bash
[Expert@MyGW:0]# $FWDIR/boot/fwboot multik_reg 0 ipv4
0
[Expert@MyGW:0]# $FWDIR/boot/fwboot multik_reg 1 ipv4
0xffffffff8a2a5690
[Expert@MyGW:0]# $FWDIR/boot/fwboot multik_reg 2 ipv4
0xffffffff8a2a5690
```

## Technical Notes
- Returns "0" for inactive or unregistered instances
- Returns hexadecimal memory address for active registered instances
- Memory addresses indicate successful CoreXL instance registration
- Part of the fwboot command family for boot-time CoreXL configuration

## Connection Potential
Links to [[checkpoint-corexl-multik-command-framework]], [[checkpoint-corexl-firewall-worker-instance-architecture]], [[checkpoint-corexl-affinity-cpu-assignment-system]], [[checkpoint-fwaccel-command-interface]], [[expert-mode-diagnostic-commands]]