---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: package-management
source-lines: 824-851
---

# CheckPoint cppkg add - SmartUpdate Package Repository Addition

## Command Purpose
Adds SmartUpdate software packages to the SmartUpdate software packages repository for later installation on managed security gateways.

## Syntax Pattern
```bash
cppkg add <Full Path to Package | DVD Drive [Product]>
```

## Key Parameters
- **Full Path to Package**: Specifies the complete local path to the SmartUpdate software package file
- **DVD Drive [Product]**: Specifies DVD root path for installation media (e.g., /mnt/CPR80)

## Licensing Context
Required for SmartUpdate-based installations and upgrades. Does not overwrite existing packages - must delete first. Packages obtained from Check Point Support Center.

## Connection Targets
- [[checkpoint-cppkg-delete-package-removal]]
- [[checkpoint-cppkg-print-repository-listing]]
- [[checkpoint-smartupdate-repository-management]]
- [[checkpoint-remote-installation-workflow]]