---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-contract-utility-commands
validation-status: verified
last-reviewed: 2025-06-18
connections: 1
review-frequency: monthly
---

# CheckPoint Contract Util CPMacro - Macro File Update Management

## Core Concept
The `contract_util cpmacro` command conditionally overwrites the current cp.macro file with a specified cp.macro file, but only if the specified file is newer than the current one, ensuring version control for CheckPoint macro configurations.

## Command Syntax
```bash
contract_util cpmacro /<path_to>/cp.macro
```

## Return Messages
- **CntrctUtils_Write_cp_macro returned -1**: Command failed (file creation, write, or replacement error)
- **CntrctUtils_Write_cp_macro returned 0**: Successfully overwrote with newer specified file
- **CntrctUtils_Write_cp_macro returned 1**: No overwrite performed (current file is newer)

## Operational Context
Ensures systematic updating of CheckPoint macro definitions while preventing accidental rollback to older configurations, maintaining configuration integrity across system updates.

## Source Attribution
**Primary Source**: CheckPoint Admin Foundation CLI Guide (R81.20)
**Reference**: sk96217 - cp.macro file documentation
**Credibility**: Official CheckPoint documentation

## Connection Potential
Links to CheckPoint configuration management, macro definition systems, and version control workflows.