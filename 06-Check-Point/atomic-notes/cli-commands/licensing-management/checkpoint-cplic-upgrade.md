---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-administration
validation-status: verified
---

# Checkpoint cplic upgrade - License Repository Update Command

## Core Concept
The `cplic upgrade` command upgrades licenses in the license repository with licenses from a specified license file obtained from the Check Point User Center. This command applies only to Management Servers and performs automated license matching and updating.

## Command Syntax
```bash
cplic upgrade {-h | -help}
cplic [-d] upgrade -l <Input File>
```

## Key Parameters
- **-l <Input File>**: Upgrades licenses in repository and Security Gateways/Cluster Members to match licenses in the specified file
- **-h | -help**: Shows built-in usage information
- **-d**: Debug mode (optional)

## Operational Process
1. Downloads license file from Check Point User Center
2. Imports existing NGX licenses into repository (`cplic get -all`)
3. Compares licenses in downloaded file with repository licenses
4. Updates old licenses when certificate keys and features match
5. Generates upgrade results report

## Integration Context
- **Management Server Only**: Command restricted to Management Server environments
- **Repository Management**: Updates central license repository and pushes to managed gateways
- **Automatic Matching**: Uses certificate keys and features for license correlation
- **Centralized Distribution**: Updates both repository and remote Security Gateways/Cluster Members

## Connection Potential
Links to license management workflows, certificate key validation, and Security Gateway administration procedures.