---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 21569-21591
---

# CheckPoint fw ctl block - Emergency Blocking

## Command Purpose
Immediately blocks all connections to, from, and through the Security Gateway regardless of installed policy, providing emergency security lockdown capability.

## Syntax Pattern
```bash
fw [-d] ctl block {on|off}
```

## Key Parameters
- `on`: Blocks all connections immediately without prompt
- `off`: Removes the block of all connections
- `-d`: Debug mode for troubleshooting

## Security Context
Emergency security command for complete traffic isolation during security incidents. Blocks all connections without prompt regardless of current policy. Recovery requires reboot or serial console access to run `fw ctl block off`.

## Connection Targets
- checkpoint-emergency-security-procedures
- checkpoint-incident-response-framework
- checkpoint-serial-console-management
- checkpoint-security-policy-bypass-mechanisms