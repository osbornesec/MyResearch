---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: licensing
source-lines: 1009-1076
---

# CheckPoint cpprod_util - Product Registry Management

## Command Purpose
Works with CheckPoint Registry to show, enable, and disable CheckPoint products and features without manual registry editing.

## Syntax Pattern
```bash
cpprod_util CPPROD_GetValue "<Product>" "<Parameter>" {0|1}
cpprod_util CPPROD_SetValue "<Product>" "<Parameter>" {1|4} "<Value>" {0|1}
cpprod_util -dump
```

## Key Parameters
- **CPPROD_GetValue**: Retrieves configuration status (0=Disabled, 1=Enabled)
- **CPPROD_SetValue**: Modifies product/feature configuration (use only when instructed by support)
- **-dump**: Creates registry dump file (RegDump) in current directory

## Licensing Context
Essential for verifying licensed features and product configurations. Critical for troubleshooting licensing issues and validating blade enablement status across Management Servers and Security Gateways.

## Connection Targets
- [[checkpoint-product-licensing-verification]]
- [[checkpoint-blade-configuration-management]]
- [[checkpoint-registry-troubleshooting]]
- [[checkpoint-feature-enablement-validation]]