---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cplic db_print
---

# CheckPoint cplic db_print - License Repository Display

## Command Purpose
Shows the details of Check Point licenses stored in the license repository on the Management Server. Applies only to a Management Server.

## Syntax
```
cplic db_print {-h | -help}
cplic [-d] db_print {<Object Name> | -all} [{-n | -noheader}] [-x] [{-t | -type}] [{-a | -attached}]
```

## Parameters
| Parameter | Description |
|-----------|-------------|
| `{-h | -help}` | Shows the applicable built-in usage |
| `-d` | Runs the command in debug mode. Use only if you troubleshoot the command itself. Best Practice: redirect output to a file or use script command to save CLI session |
| `<Object Name>` | Prints only the licenses attached to specified object. Object Name is the name of the Security Gateway/Cluster Member object as defined in SmartConsole |
| `-all` | Prints all the licenses in the license repository |
| `{-n | -noheader}` | Prints licenses with no header |
| `-x` | Prints licenses with their signatures |
| `{-t | -type}` | Prints licenses with their type: Central or Local |
| `{-a | -attached}` | Shows to which object the license is attached. Useful when "-all" parameter is specified |

## Examples
```bash
# Basic usage - show all licenses
[Expert@MGMT:0]# cplic db_print -all
    Retrieving license information from database ...
The following licenses appear in the database:
Host Expiration Features
192.168.3.28 25Aug2019 CPMP-XXX CK-XXXXXXXXXXXX

# Advanced usage - show all with signatures and attachments
[Expert@MGMT:0]# cplic db_print -all -x -a
    Retrieving license information from database ...
The following licenses appear in the database:
Host Expiration Features
192.168.3.28 25Aug2019 CPMP-XXX CK-XXXXXXXXXXXX MGMT

# Show licenses with attachment details
[Expert@MyMGMT]# cplic db_print -all -a
Retrieving license information from database ...
The following licenses appear in the database:
=======================================
Host Expiration Features
192.0.2.11 Never CPFW-FIG-25-53 CK49C3A3CC7121 MyGW1
192.0.2.11 26Nov2017 CFSB-SWB CFSB-ADNC-M CK0123456789ab MyGW2
```