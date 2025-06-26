---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cplic db_rm
---

# CheckPoint cplic db_rm - License Repository Removal

## Command Purpose
Removes a license from the license repository on the Management Server. After you remove the license from the repository, it can no longer use it.

## Syntax
```
cplic db_rm {-h | -help}
cplic [-d] db_rm <Signature>
```

## Parameters
| Parameter | Description |
| :-- | :-- |
| {-h \| -help} | Shows the applicable built-in usage. |
| -d | Runs the command in debug mode. Use only if you troubleshoot the command itself. |
|  | Best Practice - If you use this parameter, then redirect the output to a file, or use the script command to save the entire CLI session. |
| <Signature> | The signature string within the license. To see the license signature string, run the "cplic print" command. |

## Warning
You can run this command ONLY after you detach the license with the "cplic del" command.

## Scope
Applies only to a Management Server.

## Example
```
cplic db_rm 2f545a6b-d3bcb001->e5451b-4fyjgmt
```