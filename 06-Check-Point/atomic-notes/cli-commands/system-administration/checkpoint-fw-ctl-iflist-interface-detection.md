---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 21982-22025
---

# CheckPoint fw ctl iflist - Interface Detection

## Command Purpose
Shows interfaces attached to Check Point Firewall kernel with internal interface numbers used for kernel debug analysis and traffic troubleshooting.

## Syntax Pattern
```bash
fw [-d] ctl iflist
```

## Key Parameters
- `-d`: Debug mode for troubleshooting
- No additional parameters - lists all detected interfaces

## Security Context
Essential for interface mapping during kernel debug analysis and traffic troubleshooting. Shows all detected interfaces even without IP assignments. Critical for correlating interface numbers in debug output (e.g., ifn=2) with actual interface names.

## Connection Targets
- checkpoint-kernel-debug-interface-mapping
- checkpoint-interface-configuration-troubleshooting
- checkpoint-traffic-flow-analysis
- checkpoint-network-topology-validation