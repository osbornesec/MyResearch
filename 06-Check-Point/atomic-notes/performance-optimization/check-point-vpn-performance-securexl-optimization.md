---
created: 2025-06-17T12:03:00Z
state: permanent
type: atomic-note
source: sk105119 - Best Practices - VPN Performance
source-credibility: 9
research-context: Check Point VPN Performance Optimization
validation-status: verified
connections: 4
---

# Check Point VPN Performance SecureXL Optimization

## Core Concept
VPN traffic in Check Point Security Gateways achieves optimal performance when processed on SecureXL level (SND cores) rather than Firewall instances, requiring specific configuration conditions and feature compatibility.

## SecureXL VPN Acceleration Conditions
All conditions must be met for optimal VPN processing:
- **Software Blades**: Only "Firewall" and "IPSec VPN" enabled
- **Packet Integrity**: No fragmented packets present
- **Rule Configuration**: SecureXL acceleration not disabled by security rules
- **Feature Compatibility**: VPN features disqualified from SecureXL disabled

## Features Handled by Firewall Instances
The following features force VPN traffic to Firewall instances (reducing performance):
- **Compression algorithms** (IPSec VPN Community Advanced Settings)
- **Transport mode SAs** (L2TP clients, GRE tunnels)
- **Multicast IPsec** (GDOI)
- **Monitoring blade** with Traffic counters enabled
- **Additional software blades** beyond Firewall and VPN

## Encryption Algorithm Performance Optimization
- **AES-NI support**: Intel dedicated instruction set for significantly improved encrypt-decrypt performance
- **Algorithm selection**: AES-GCM fastest with AES-NI support, AES-128 for non-AES-NI environments
- **Compatibility considerations**: Avoid AES-GCM with legacy appliances (4000/2000 series, SMB 600/1100)

## Core Assignment Strategy
For high VPN traffic environments:
- **SND utilization high, Firewall idle**: Reduce Firewall instances (10→8), increase SND instances
- **Multi-Queue enablement**: Required when single interface overwhelms single SND core
- **Optimal configuration**: Balance between SND and Firewall core allocation based on traffic patterns

## Performance Impact Factors
- Multi-core processing capability depends on SND core allocation
- Visitor Mode processing occurs in user space (performance limitation)
- SSL VPN scaling requires dedicated appliance considerations

## Connection Potential
Links to Check Point SecureXL acceleration principles, CoreXL configuration optimization, and encryption algorithm performance characteristics.