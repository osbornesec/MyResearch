---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: package-management
source-lines: 973-1008
---

# CheckPoint cppkg setroot - Repository Root Path Configuration

## Command Purpose
Configures the path to the root directory of the SmartUpdate software packages repository, copying existing packages and updating environment variables.

## Syntax Pattern
```bash
cppkg setroot <Full Path to Repository Root Directory>
```

## Key Parameters
- **Full Path to Repository Root Directory**: New location for SmartUpdate package repository
- Automatically copies packages from old to new location
- Updates $SUROOT environment variable in CheckPoint profile scripts

## Licensing Context
Critical for repository migration and storage management. Requires machine reboot to complete configuration. Default path is /var/log/cpupgrade/suroot.

## Connection Targets
- [[checkpoint-cppkg-getroot-repository-path-display]]
- [[checkpoint-suroot-environment-variable]]
- [[checkpoint-package-migration-procedures]]
- [[checkpoint-repository-storage-management]]