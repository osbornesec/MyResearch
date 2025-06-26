---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: "Check Point CLI command extraction from administrative foundation guide"
validation-status: verified
source: "Check Point CLI Reference Guide R81.20"
domain: "License Management"
---

# Check Point CLI Command cplic db_add

## Core Concept

Adds licenses to the license repository on Management Server, automatically attaching Local licenses to matching Security Gateways while requiring manual attachment for Central licenses.

## Syntax and Parameters

```bash
cplic db_add {-h | -help}
cplic [-d] db_add -l <License File> [<Host>] [<Expiration Date>] [<Signature>] [<SKU/Features>]
```

## Key Parameters

- `-d`: Debug mode (redirect output to file recommended)  
- `-l <License File>`: File containing the license data
- `<Host>`: Hostname or IP address of Management Server
- `<Expiration Date>`: License expiration date
- `<Signature>`: License signature string (case sensitive, hyphens optional)
- `<SKU/Features>`: License SKU summarizing included features

## License Type Behavior

**Local Licenses**: Automatically attached to managed Security Gateway/Cluster Member with matching IP address
**Central Licenses**: Require manual attachment after addition to repository

## License Data Source

License details obtained from Check Point User Center account.

## Signature Format

License signatures are case sensitive with optional hyphens.
Example: `aa6uwknDc-CE6CRtjhv-zipoVWSnm-z98N7Ck3m`

## SKU Examples

Features summarized in SKU format like: `CPSUITE-EVAL-3DES-vNG`

## Repository Integration

Added licenses become available in the license repository for distribution to managed devices through Management Server.

## Connection Potential

Links to:
- License repository management
- Check Point User Center procedures
- Central vs Local license concepts
- Management Server administration
- License distribution workflows
- IP address matching logic
- SKU and feature entitlements