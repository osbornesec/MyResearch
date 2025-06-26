---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cplic
---

# CheckPoint cplic - License Management Framework

## Command Purpose
The cplic command manages Check Point licenses. You can run this command in Gaia Clish or in the Expert mode.

## Command Categories
License Management is divided into three types of commands:
- **Local licensing commands**: Management Servers, Security Gateways and Cluster Members - executed locally on the Check Point computers
- **Remote licensing commands**: Management Servers only - executed on the Security Management Server or Domain Management Server, affecting managed Security Gateways and Cluster Members
- **License Repository commands**: Management Servers only - executed on the Security Management Server or Domain Management Server, affecting licenses stored in the local license repository

## Syntax Overview
**Local Licensing on Management Server:**
```
cplic [-d]
    {-h | -help}
    check <options>
    contract <options>
    del <options>
    print <options>
    put <options>
```

**Remote Licensing on managed Security Gateways and Cluster Members:**
```
cplic [-d]
    {-h | -help}
    del <options>
    get <options>
    put <options>
    upgrade <options>
```

**License Database Operations on Management Server:**
```
cplic [-d]
    {-h | -help}
    db_add <options>
    db_print <options>
    db_rm <options>
```

## Key Parameters
- `-d`: Runs the command in debug mode (redirect output to file)
- `{-h | -help}`: Shows applicable built-in usage
- `check`: Confirms license includes feature on local Security Gateway or Management Server
- `contract`: Manages Check Point Service Contract
- `del`: Deletes Check Point license or detaches Central license
- `get`: Retrieves licenses from managed Security Gateways into repository
- `print`: Prints details of installed Check Point licenses
- `put`: Installs and attaches licenses
- `db_*`: Database operations for license repository management