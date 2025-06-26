---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: advanced-features
source-lines: 30068-30086
---

# CheckPoint fwaccel ip_mr_cache - IPv4 Multicast Routing Cache Display

## Command Purpose
Shows the IPv4 multicast routing cache when SecureXL operates in User Mode, providing visibility into multicast traffic acceleration status.

## Syntax Pattern
```bash
fwaccel [-i <SecureXL ID>] ip_mr_cache
```

## Key Parameters
- `-i <SecureXL ID>`: Specifies the SecureXL instance ID (IPv4 only)
- No parameters: Shows default multicast routing cache for primary instance

## Advanced Context
Critical for enterprise environments with multicast applications (video conferencing, streaming, real-time data distribution). SecureXL acceleration of multicast routing requires User Mode operation, making cache monitoring essential for performance troubleshooting and optimization verification.

## Connection Targets
- SecureXL User Mode vs Kernel Mode operation
- Multicast routing acceleration patterns
- CheckPoint performance optimization methodologies
- Enterprise multicast traffic analysis