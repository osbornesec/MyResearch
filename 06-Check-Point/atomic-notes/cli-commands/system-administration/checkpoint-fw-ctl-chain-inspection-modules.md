---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 21592-21663
---

# CheckPoint fw ctl chain - Inspection Chain Modules

## Command Purpose
Shows the list of Firewall Chain Modules through which traffic passes on the Security Gateway, displaying inspection chain architecture and module priorities.

## Syntax Pattern
```bash
fw [-d] ctl chain
```

## Key Parameters
- `-d`: Debug mode for troubleshooting
- No additional parameters - displays complete chain information

## Security Context
Critical for understanding traffic flow through security inspection modules. Shows priority-ordered chain including SecureXL, VPN, firewall, QoS, and streaming modules. Essential for troubleshooting security policy processing and performance optimization.

## Connection Targets
- checkpoint-securexl-acceleration-patterns-software-optimization
- checkpoint-traffic-inspection-architecture
- checkpoint-corexl-firewall-worker-instance-architecture
- checkpoint-vpn-policy-inspection-chain