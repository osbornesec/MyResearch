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

# Check Point CLI Command cplic check

## Core Concept

Verifies that installed licenses include specific features on local Security Gateway or Management Server, providing license validation and feature availability confirmation.

## Syntax and Parameters

```bash
cplic check {-h | -help}
cplic [-d] check [-p <Product>] [-v <Version>] [{-c | -count}] [-t <Date>] [{-r | -routers}] [{-S | -SRusers}] <Feature>
```

## Key Parameters

- `-d`: Debug mode (redirect output to file recommended)
- `-p <Product>`: Specify product (fwl, mgmt, services, cvpn, etm, eps)
- `-v <Version>`: Product version for license check
- `-c | -count`: Output number of licenses for feature
- `-t <Date>`: Check license status on future date (ddmmyyyy format)
- `-r | -routers`: Check router license allowance
- `-S | -SRusers`: Check SecuRemote user allowance
- `<Feature>`: Specific feature to validate

## Product Examples

- **fwl**: FireWall-1 infrastructure (all Software Blades)
- **mgmt**: Multi-Domain Server infrastructure  
- **services**: Various service entitlements
- **cvpn**: Mobile Access
- **etm**: QoS (FloodGate-1)
- **eps**: Endpoint Software Blades

## Execution Context

Available on:
- Management Server / Security Gateway / Cluster Member (Gaia Clish or Expert mode)
- Scalable Platform Security Group (Gaia gClish or Expert mode)

## License Validation Logic

Can validate features across multiple licenses, with features potentially valid on one license but invalid on another for the same date.

## Connection Potential

Links to:
- License management procedures
- Feature entitlement verification
- Product version compatibility
- Check Point licensing models
- Compliance validation workflows
- Security gateway configuration
- Management server administration