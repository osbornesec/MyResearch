---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: package-management
source-lines: 954-972
---

# CheckPoint cppkg print - Repository Package Listing

## Command Purpose
Prints the complete list of SmartUpdate software packages currently available in the SmartUpdate software packages repository.

## Syntax Pattern
```bash
cppkg print
```

## Key Parameters
- No parameters required - displays all available packages with full details
- Shows Vendor, Product, Major Version, OS, and Minor Version information

## Licensing Context
Primary tool for viewing available packages before installation operations. Essential for identifying package attributes needed for cprinstall commands and dependency verification.

## Connection Targets
- [[checkpoint-cppkg-add-package-repository-management]]
- [[checkpoint-cprinstall-package-deployment]]
- [[checkpoint-package-version-identification]]
- [[checkpoint-smartupdate-inventory-management]]