---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: package-management
source-lines: 852-908
---

# CheckPoint cppkg delete - SmartUpdate Package Repository Removal

## Command Purpose
Deletes SmartUpdate software packages from the SmartUpdate software packages repository, supporting both interactive and manual specification modes.

## Syntax Pattern
```bash
cppkg del ["<Vendor>" "<Product>" "<Major Version>" "<OS>" "<Minor Version>"]
cppkg delete ["<Vendor>" "<Product>" "<Major Version>" "<OS>" "<Minor Version>"]
```

## Key Parameters
- **Interactive Mode**: Running without parameters shows menu with deletion options
- **Manual Mode**: All parameters must be specified in double quotes
- **Delete All Option**: Available through interactive mode (option 0)

## Licensing Context
Essential for repository maintenance before adding updated packages. Used to clean up obsolete firmware versions and manage repository storage space.

## Connection Targets
- [[checkpoint-cppkg-add-package-repository-management]]
- [[checkpoint-cppkg-print-repository-listing]]
- [[checkpoint-package-version-management]]
- [[checkpoint-interactive-command-patterns]]