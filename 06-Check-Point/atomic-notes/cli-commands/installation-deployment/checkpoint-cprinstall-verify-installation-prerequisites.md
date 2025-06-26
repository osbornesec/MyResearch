---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: installation
source-lines: 1725-1780
---

# CheckPoint cprinstall verify - Installation Prerequisites Validation

## Command Purpose
Confirms installation feasibility by validating OS compatibility, dependency requirements, disk space availability, and CPRID connectivity before package deployment.

## Syntax Pattern
```bash
cprinstall verify <Object Name> "<Vendor>" "<Product>" "<Major Version>" ["<Minor Version>"]
```

## Key Parameters
- **Object Name**: Security Gateway object name from SmartConsole
- **Minor Version**: Optional parameter for specific version targeting
- Validates: OS compatibility, dependency checks, disk space, CPRID connection

## Licensing Context
Mandatory pre-installation validation for SmartUpdate operations. Prevents failed installations due to incompatible configurations. Essential for change management and deployment planning.

## Connection Targets
- [[checkpoint-cprinstall-install-remote-package-deployment]]
- [[checkpoint-cprid-remote-installation-daemon]]
- [[checkpoint-dependency-validation-framework]]
- [[checkpoint-deployment-planning-procedures]]