---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-firewall-administration
validation-status: verified
---

# Check Point fwboot bootconf Command Configuration

## Core Concept
The `fwboot bootconf` command configures firewall boot security options on Check Point Security Gateways, controlling how the firewall operates immediately after system reboot and during the boot process.

## Key Configuration Parameters
- **CPU cores**: Number of cores used after reboot (HyperThreading/SMT support)
- **Default filter policy**: Policy file path and name for boot filtering
- **IP forwarding**: Network forwarding behavior during boot sequence
- **IPv6 support**: Enable/disable IPv6 functionality
- **CoreXL instances**: Number of parallel processing instances for IPv4/IPv6

## Configuration Storage
Boot configuration changes are permanently saved in `$FWDIR/boot/boot.conf` file, ensuring persistence across reboots.

## Usage Pattern
Running `fwboot bootconf` without arguments displays built-in help and current system boot security settings for review and verification.

## Administrative Context
Essential for performance optimization and security policy enforcement during the critical boot phase when standard policy installation may not yet be active.

## Connection Potential
- [[checkpoint-corexl-multi-core-performance-scaling]]
- [[checkpoint-policy-installation-acceleration]]
- [[checkpoint-securexl-acceleration-patterns-software-optimization]]