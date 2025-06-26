---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-reference-guide
validation-status: verified
connections: 3
review-frequency: monthly
---

# Check Point cppkg setroot Command Configuration

## Core Concept

The `cppkg setroot` command configures the root directory path for the SmartUpdate software packages repository on Check Point management systems, enabling administrators to customize package storage locations.

## Command Syntax

```bash
cppkg setroot <Full Path to Repository Root Directory>
```

## Key Operational Requirements

- **Expert Mode Only**: Command requires Expert mode execution privileges
- **Multi-Domain Context**: On Multi-Domain Servers, must run in MDS context (use `mdsenv` command first)
- **Environment Variable Update**: Updates `$SUROOT` in Check Point Profile shell scripts
- **Reboot Requirement**: Machine reboot required to complete directory setting changes

## Default Configuration

- **Default Path**: `/var/log/cpupgrade/suroot`
- **Environment Files**: Updates `$CPDIR/tmp/.CPprofile.sh` and `$CPDIR/tmp/.CPprofile.csh`

## Repository Migration Behavior

1. **Content Preservation**: Old repository content automatically copied to new location
2. **Conflict Resolution**: Packages with identical names in new location overwritten by old location packages
3. **Directory Creation**: System prompts to create new directory if it doesn't exist
4. **Interactive Confirmation**: Requires user confirmation before making changes

## Example Usage

```bash
[Expert@MGMT:0]# cppkg setroot /var/log/my_directory
Repository root is set to : /var/log/cpuupgrade/suroot
Note : When changing repository root directory :
    1. Old repository content will be copied into the new repository
    2. A package in the new location will be overwritten by a package in the old
        location, if the packages have the same name
Change the current repository root ? [y/n] : y
The new repository directory does not exist. Create it ? [y/n] : y
Repository root was set to : /var/log/my_directory
Notice : To complete the setting of your directory, reboot the machine!
```

## Related Commands

- `cppkg getroot` - Displays current repository root path
- `cppkg print` - Lists packages in current repository
- `mdsenv` - Required for Multi-Domain Server context switching

## Source Quality

- **Primary Source**: Check Point R81.20 CLI Reference Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official Check Point documentation verification