---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-ips-command-reference
validation-status: verified
connections: 3
review-frequency: monthly
---

# checkpoint-ips-on

## Core Concept
The `ips on` command enables Check Point's Intrusion Prevention System (IPS) blade, activating real-time threat detection and blocking capabilities on the security gateway.

## Technical Implementation
```bash
# Enable IPS blade
ips on

# Verify IPS status
fw ctl get int fwha_ips_enabled
```

## Operational Impact
- **Security Enhancement**: Activates signature-based threat detection
- **Performance Consideration**: Introduces inspection latency for processed traffic
- **Policy Integration**: IPS rules become active according to security policy configuration
- **Logging**: Generates IPS-specific log entries for detected threats

## Prerequisites
- Valid IPS license installed on gateway
- IPS policy configured and installed
- Sufficient memory and CPU resources for inspection processing

## Related Commands
- `ips off` - Disables IPS functionality
- `ips stat` - Displays IPS statistics and status
- `fw ctl get int fwha_ips_enabled` - Verifies IPS blade state

## Connection Potential
[[checkpoint-ips-update-troubleshooting-methodology]]
[[checkpoint-securexl-acceleration-patterns-software-optimization]]
[[checkpoint-performance-investigation-baseline-establishment]]