---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cplic upgrade
---

# CheckPoint cplic upgrade - License Repository Upgrade

## Command Purpose
Upgrades licenses in the license repository with licenses in the specified license file.

## Syntax
```
cplic upgrade { -h | -help}
cplic [-d] upgrade -l <Input File>
```

## Parameters
- `-h | -help` - Shows the applicable built-in usage
- `-d` - Runs the command in debug mode (use only for troubleshooting)
- `-l <Input File>` - Upgrades the licenses in the license repository and Security Gateways to match the licenses in the specified file

## Usage Context
Used on Management Servers to upgrade licenses from older versions (like NGX) to newer Software Blade licenses. The license file is obtained from the Check Point User Center.