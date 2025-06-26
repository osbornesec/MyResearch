---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: installation
source-lines: 1510-1564
---

# CheckPoint cprinstall install - Remote Package Installation

## Command Purpose
Installs CheckPoint products on managed Security Gateways remotely from the Management Server using SmartUpdate packages.

## Syntax Pattern
```bash
cprinstall install [-boot] [-backup] [-skip_transfer] <Object Name> "<Vendor>" "<Product>" "<Major Version>" "<Minor Version>"
```

## Key Parameters
- **-boot**: Automatically reboots gateway after installation (only when all products same version)
- **-backup**: Creates snapshot before installation (SecurePlatform only)
- **-skip_transfer**: Skip package transfer phase
- **Object Name**: Security Gateway object name as configured in SmartConsole

## Licensing Context
Requires SmartUpdate license. Not supported on Gaia OS. Automatically runs verification before installation. Critical for centralized software lifecycle management across security infrastructure.

## Connection Targets
- [[checkpoint-cprinstall-verify-installation-prerequisites]]
- [[checkpoint-cppkg-print-repository-listing]]
- [[checkpoint-smartupdate-licensing-requirements]]
- [[checkpoint-remote-installation-workflow]]