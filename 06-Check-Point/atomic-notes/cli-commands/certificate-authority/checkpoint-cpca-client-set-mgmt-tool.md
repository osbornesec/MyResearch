---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint CPCA Client Set Management Tool Control Command

## Core Concept
The `cpca_client set_mgmt_tool` command controls the ICA (Internal Certificate Authority) Management Tool, which is disabled by default and requires explicit configuration to enable web-based certificate management functionality.

## Command Syntax
```bash
cpca_client [-d] set_mgmt_tool {on | off | add | remove | clean | print} [-p <CA port number>] [(-a <Administrator DN> | -u <User DN> | -c <Custom User DN>)]
```

## Parameters
| Parameter | Description |
|-----------|-------------|
| `-d` | Runs command in debug mode for troubleshooting |
| `on` | Starts the ICA Management Tool |
| `off` | Stops the ICA Management Tool |
| `add` | Adds specified administrator, user, or custom user permissions |
| `remove` | Removes specified administrator, user, or custom user permissions |
| `clean` | Removes all permitted administrators, users, or custom users |
| `print` | Shows configured administrators, users, or custom users |
| `-p <CA port number>` | Optional. Specifies TCP port (default: 18265) |
| `-a <Administrator DN>` | Optional. Specifies administrator Distinguished Name |
| `-u <User DN>` | Optional. Specifies user Distinguished Name |
| `-c <Custom User DN>` | Optional. Specifies custom user Distinguished Name |

## Multi-Domain Context
On Multi-Domain Servers, must run in Domain Management Server context:
```bash
mdsenv <IP Address or Name of Domain Management Server>
```

## Web Access Configuration
After enabling, connect via web browser:
```
https://<Management Server IP>:18265
```

## Distinguished Name Format
DN must include complete certificate subject fields:
```
"CN=ICA_Tool_Admin,OU=users,O=MGMT.s6t98x"
```

## Research Context
Critical for certificate management in CheckPoint environments where web-based ICA administration is required instead of CLI-only certificate operations.

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
- Links to CheckPoint certificate authority operations
- Connects with web-based management interfaces
- Related to Multi-Domain Server administration
- Associated with certificate DN configuration procedures