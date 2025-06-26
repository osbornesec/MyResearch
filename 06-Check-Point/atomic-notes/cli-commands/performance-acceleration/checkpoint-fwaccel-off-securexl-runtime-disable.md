---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: advanced-features
source-lines: 30088-30116
---

# CheckPoint fwaccel off - SecureXL Runtime Acceleration Disable

## Command Purpose
Stops SecureXL acceleration on-the-fly for debugging purposes, with temporary effect that doesn't survive reboot or service restart.

## Syntax Pattern
```bash
fwaccel off [-a] [-q]
fwaccel6 off [-a] [-q]
```

## Key Parameters
- `-a`: On VSX Gateway, stops acceleration on all Virtual Systems
- `-q`: Suppresses output (quiet mode)
- IPv4/IPv6 variants available

## Advanced Context
Critical debug tool for enterprise troubleshooting. R80.20+ enforces temporary-only disabling to prevent permanent acceleration loss. VSX environments require careful context management (vsenv <VSID>) for targeted virtual system control. Cluster deployments demand synchronized configuration across all members.

## Connection Targets
- SecureXL acceleration architecture
- VSX virtual system context management
- CheckPoint cluster synchronization requirements
- Performance debugging methodologies