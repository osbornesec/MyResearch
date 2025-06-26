---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: package-management
source-lines: 933-953
---

# CheckPoint cppkg getroot - Repository Root Path Display

## Command Purpose
Shows the current path to the root directory of the SmartUpdate software packages repository (value of environment variable $SUROOT).

## Syntax Pattern
```bash
cppkg getroot
```

## Key Parameters
- No parameters required - displays current repository root path configuration

## Licensing Context
Essential for verifying repository location configuration and troubleshooting package management issues. Default location is /var/log/cpupgrade/suroot.

## Connection Targets
- [[checkpoint-cppkg-setroot-repository-path-configuration]]
- [[checkpoint-suroot-environment-variable]]
- [[checkpoint-repository-location-management]]
- [[checkpoint-package-storage-architecture]]