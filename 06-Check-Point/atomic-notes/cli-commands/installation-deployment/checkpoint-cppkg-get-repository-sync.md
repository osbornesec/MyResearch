---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: package-management
source-lines: 909-932
---

# CheckPoint cppkg get - Repository Content Synchronization

## Command Purpose
Updates the list of SmartUpdate software packages in the repository based on the actual content present in the repository directory structure.

## Syntax Pattern
```bash
cppkg get
```

## Key Parameters
- No parameters required - performs automatic repository scan and update

## Licensing Context
Critical for maintaining repository consistency after manual file operations or after adding packages outside the cppkg framework. Ensures repository database matches actual files.

## Connection Targets
- [[checkpoint-cppkg-print-repository-listing]]
- [[checkpoint-repository-consistency-management]]
- [[checkpoint-package-database-synchronization]]
- [[checkpoint-smartupdate-maintenance-procedures]]