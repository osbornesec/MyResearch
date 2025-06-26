---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: pki
source-lines: 200-277
---

# CheckPoint cplic check - Feature Validation

## Command Purpose
Confirms that installed licenses include specified features on local Security Gateway or Management Server with date-specific validation capability.

## Syntax Pattern
```bash
cplic [-d] check [-p <Product>] [-v <Version>] [{-c|-count}] [-t <Date>] 
[{-r|-routers}] [{-S|-SRusers}] <Feature>
```

## Key Parameters
- `-p <Product>`: Specify product (fwl, mgmt, services, cvpn, etm, eps)
- `-v <Version>`: Product version for license verification
- `-c|-count`: Output number of licenses for feature
- `-t <Date>`: Check license status on future date (ddmmyyyy format)
- `-r|-routers`: Check router allowance count
- `-S|-SRusers`: Check SecuRemote user allowance

## Security Context
Critical for feature authorization validation before enabling security capabilities. Ensures proper licensing before activating certificate-based features, VPN functionality, and advanced security blades.

## Product Examples
- `fwl`: FireWall-1 infrastructure (all Software Blades)
- `mgmt`: Multi-Domain Server infrastructure  
- `cvpn`: Mobile Access
- `eps`: Endpoint Software Blades

## Connection Targets
- License-controlled feature activation
- Certificate-based authentication validation
- Multi-Domain Server feature verification
- Security blade licensing compliance