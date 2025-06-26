---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: pki
source-lines: 321-362
---

# CheckPoint cplic db_add - Repository License Addition

## Command Purpose
Adds licenses to the license repository on Management Server with automatic attachment for Local licenses and manual attachment requirement for Central licenses.

## Syntax Pattern
```bash
cplic [-d] db_add -l <License File> [<Host>] [<Expiration Date>] [<Signature>] [<SKU/Features>]
```

## Key Parameters
- `-l <License File>`: License file containing one or more licenses
- `<Host>`: Hostname or IP address of Management/Domain Management Server
- `<Expiration Date>`: License expiration date
- `<Signature>`: License signature string (case sensitive, hyphens optional)
- `<SKU/Features>`: License SKU summarizing included features

## Security Context
Central component of PKI-based license distribution system. Local licenses automatically attach to matching IP addresses, while Central licenses require manual attachment for security and control purposes.

## License Types Behavior
- **Local Licenses**: Automatic attachment to matching IP address
- **Central Licenses**: Manual attachment required for security control
- **Source**: CheckPoint User Center license details

## Connection Targets
- Centralized license distribution architecture
- PKI-based license validation system
- Management Server repository coordination
- Security Gateway license deployment