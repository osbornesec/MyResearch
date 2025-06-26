---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
domain: checkpoint-administration
---

# Check Point cppkg getroot Command

## Core Concept
The `cppkg getroot` command displays the current path to the root directory of the SmartUpdate software packages repository by showing the value of the `$SUROOT` environment variable.

## Command Details
- **Syntax**: `cppkg getroot`
- **Purpose**: Shows repository root directory path
- **Output**: Displays current `$SUROOT` environment variable value
- **Context**: SmartUpdate package management system

## Usage Requirements
- Must be run with Expert-level privileges
- On Multi-Domain Server (MDS), requires `mdsenv` context
- No parameters or options required

## Example Output
```bash
[Expert@MGMT:0]# cppkg getroot
[cppkg 7119 4128339728]@MGMT[29 May 19:16:06] Current repository root is set to : /var/log/cpupgrade/suroot
[Expert@MGMT:0]#
```

## Administrative Context
Part of the Check Point SmartUpdate package management toolkit, used for repository configuration verification and troubleshooting package installation issues.

## Connection Potential
- Links to `cppkg setroot` for repository path configuration
- Relates to SmartUpdate repository management workflows
- Connects to Multi-Domain Server administration procedures
- Associates with Check Point package installation troubleshooting