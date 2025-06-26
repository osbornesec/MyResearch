---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cplic contract
---

# CheckPoint cplic contract - Service Contract Management

## Command Purpose
Manages (deletes and installs) the Check Point Service Contract on the local Check Point computer.

## Syntax
```
cplic contract -h
cplic [-d] contract
    del
        -h
        <Service Contract ID>
    put
        [-o | -overwrite}] <Service Contract File>
```

## Parameters
| Parameter | Description |
| :--: | :--: |
| {-h \| -help} | Shows the applicable built-in usage |
| -d | Runs the command in debug mode. Use only if you troubleshoot the command itself |
| del | Deletes the Check Point Service Contract |
| put | Installs the Check Point Service Contract |
| {-o \| -overwrite} | Overwrites existing Service Contract |
| <Service Contract ID> | Identifier of the Service Contract to delete |
| <Service Contract File> | Path to and name of the Service Contract file |

## Notes
- For more information about Service Contract files, see sk33089: What is a Service Contract File?
- If you install a Service Contract on a managed Security Gateway / Cluster Member / Scalable Platform Security Group, you must update the license repository on the applicable Management Server - either with the "cplic get" command, or in SmartUpdate
- Can be run on Management Server / Security Gateway / Cluster Member in Gaia Clish or Expert mode
- Can be run on Scalable Platform Security Group in Gaia gClish or Expert mode
- Best Practice: If using -d parameter, redirect output to a file or use the script command to save the entire CLI session