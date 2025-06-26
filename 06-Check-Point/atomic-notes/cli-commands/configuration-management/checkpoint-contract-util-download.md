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

# CheckPoint Contract Util Download - Service Contract Acquisition

## Core Concept
The `contract_util download` command retrieves CheckPoint Service Contract files either from the User Center online portal or from local files, supporting proxy authentication and interactive credential modes for enterprise environments.

## Command Syntax
```bash
contract_util download {-h | -help} local [{hfa | maj_upgrade | min_upgrade | upgrade}] <Service Contract File>
contract_util download uc {-h | -help} [-i] [{hfa | maj_upgrade | min_upgrade | upgrade}] <Username> <Password> [<Proxy Server> [<Proxy Username>:<Proxy Password>]]
```

## Download Sources
- **local**: Downloads from specified local Service Contract file path
- **uc**: Downloads from CheckPoint User Center with credentials

## Authentication Options
- **Interactive mode (-i)**: Prompts for User Center credentials and proxy settings
- **Proxy support**: Includes proxy server, username, and password parameters
- **Credential parameters**: User Center email and password for direct authentication

## Operational Context
Critical for maintaining current Service Contract information enabling upgrade eligibility checks and license compliance validation across CheckPoint infrastructure.

## Source Attribution
**Primary Source**: CheckPoint Admin Foundation CLI Guide (R81.20)
**Reference**: sk33089 - Service Contract File documentation
**Credibility**: Official CheckPoint documentation

## Connection Potential
Links to CheckPoint User Center integration, license management, and network proxy configuration workflows.