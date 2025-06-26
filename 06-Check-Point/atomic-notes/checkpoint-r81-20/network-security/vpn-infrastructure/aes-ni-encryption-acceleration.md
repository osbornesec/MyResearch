---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-vpn-networking-documentation
validation-status: verified
sk-reference: sk105119
domain: cybersecurity-infrastructure
---

# AES-NI Encryption Acceleration

## Core Concept

Intel AES-NI (Advanced Encryption Standard New Instructions) provides dedicated CPU instruction sets that significantly accelerate AES encryption/decryption operations in Check Point appliances, dramatically improving VPN throughput performance.

## Performance Benefits

**AES-GCM Optimization**: With AES-NI support, AES-GCM becomes faster than traditional AES-CBC+HMAC-SHA1, showing the most significant performance improvement among supported algorithms.

**Throughput Enhancement**: AES-NI enables substantial increases in Site-to-Site VPN, Remote Access VPN, and Mobile Access VPN performance on supported platforms.

## Platform Requirements

- Gaia OS must run 64-bit kernel (default in R80.40+)
- All appliance models from 2024+ support AES-NI
- Legacy models: 12200, 4000 series, 2000 series do not support AES-NI
- Open servers supported with 64-bit Gaia OS

## Algorithm Compatibility

**Supported**: AES-CBC (128/256-bit), AES-GCM (128/256-bit)
**Not Recommended**: AES-GCM on non-AES-NI platforms, SMB appliances, SAM card environments

## Implementation Considerations

AES-NI is enabled by default on supported appliances. For maximum performance, select AES-GCM when both VPN endpoints support AES-NI, otherwise use AES-128 for broader compatibility.

## Connection Potential

Links to VPN performance optimization, Check Point appliance specifications, encryption algorithm selection, and hardware-accelerated cryptography implementations.