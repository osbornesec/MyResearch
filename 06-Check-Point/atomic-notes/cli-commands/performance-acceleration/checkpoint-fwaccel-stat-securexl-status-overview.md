---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: advanced-features
source-lines: 30666-30693
---

# CheckPoint fwaccel stat - SecureXL Status Overview Display

## Command Purpose
Shows comprehensive SecureXL acceleration status including mode (KPPAK/UPPAK), enabled status, accelerated interfaces, and template features.

## Syntax Pattern
```bash
fwaccel stat
fwaccel6 stat
```

## Key Parameters
- No parameters required
- IPv4 and IPv6 variants available

## Advanced Context
Essential enterprise monitoring command for SecureXL health assessment. Displays acceleration mode (Kernel KPPAK vs User UPPAK), interface acceleration status, and template features (Accept, Drop, NAT Templates, LightSpeed Acceleration). Critical for performance validation and troubleshooting acceleration issues in high-throughput environments.

## Connection Targets
- SecureXL architecture modes (KPPAK vs UPPAK)
- Template-based acceleration features
- Interface-specific acceleration monitoring
- Enterprise performance optimization verification