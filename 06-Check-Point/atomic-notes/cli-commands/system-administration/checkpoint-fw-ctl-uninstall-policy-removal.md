---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 22420-22445
---

# CheckPoint fw ctl uninstall - Policy Removal

## Command Purpose
Tells operating system to stop passing packets to Firewall, unloads current Security Policy, and unloads Firewall Chain/Connection Modules, leaving networks unprotected.

## Syntax Pattern
```bash
fw [-d] ctl uninstall
```

## Key Parameters
- `-d`: Debug mode for troubleshooting
- No additional parameters - immediate uninstallation

## Security Context
CRITICAL WARNING: Immediately leaves networks behind Security Gateway unprotected. Does not restore Security Policy when followed by `fw ctl install`. Requires `fw fetch` or `cpstart` for policy restoration. Emergency use only.

## Connection Targets
- checkpoint-fw-ctl-install-policy-activation
- checkpoint-fw-fetch-policy-synchronization
- checkpoint-emergency-security-procedures
- checkpoint-cpstart-service-initialization