---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: threat-prevention
source-lines: 21349-21433
---

# CheckPoint fw amw - Threat Prevention Policy Management

## Command Purpose
Fetches and unloads Threat Prevention policy covering Anti-Bot, Anti-Spam, Anti-Virus, IPS, Threat Emulation, and Threat Extraction Software Blades.

## Syntax Pattern
```bash
fw [-d] amw fetch {-f [-c] | <Master1> [Master2] | local | localhost} [-i] [-n] [-r]
fw [-d] amw unload
```

## Key Parameters
- `fetch -f`: Fetch from Management Server in masters file
- `fetch -c`: Fetch from peer Cluster Member (with -f)
- `fetch local`: Fetch locally stored policy from $FWDIR/state/local/AMW/
- `unload`: Unloads current Threat Prevention policy
- `-i`: Ignore SIC name and object name on DAIP gateways
- `-n`: Don't load if policy is same as currently installed
- `-r`: Ignore cluster installation failure option

## Security Context
Critical for maintaining threat protection across Security Gateways. Unloading significantly decreases security by disabling all Threat Prevention Software Blades. Essential for policy synchronization in cluster environments.

## Connection Targets
- checkpoint-threat-prevention-blades-architecture
- checkpoint-cluster-policy-synchronization
- checkpoint-sic-certificate-management
- checkpoint-policy-installation-acceleration