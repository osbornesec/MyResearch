---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-administration-cli
validation-status: verified
source: Check Point Admin Foundation CLI Guide R81.20
---

# CheckPoint fwm fetchfile OPSEC Configuration File Retrieval

## Core Concept
The fwm fetchfile command fetches specified OPSEC configuration files from remote managed computers to the local Management Server, supporting only fwopsec.conf or fwopsec.v4x files with SIC trust requirement.

## Description
Retrieves OPSEC configuration files from specified source computers in a secure manner, requiring established SIC (Secure Internal Communication) trust between local and remote systems for authentication and secure file transfer.

## Syntax
```bash
fwm [-d] fetchfile -r <File> [-d <Local Path>] <Source>
```

## Parameters
- **-d**: Runs command in debug mode for troubleshooting
- **-r <File>**: Specifies the remote file path to fetch (conf/fwopsec.conf or conf/fwopsec.v4x)
- **-d <Local Path>**: Optional local directory path to save the fetched file
- **<Source>**: IP address or hostname of the managed remote source computer

## Usage Context
- **OPSEC integration**: Retrieving configuration files for third-party application integration
- **Configuration management**: Centralizing OPSEC settings from distributed environments
- **Troubleshooting**: Analyzing remote OPSEC configurations for debugging purposes
- **Multi-Domain environments**: Must be executed within appropriate Domain Management Server context

## Multi-Domain Requirement
On Multi-Domain Server, must run within domain context:
```bash
mdsenv <IP Address or Name of Domain Management Server>
fwm fetchfile -r "conf/fwopsec.conf" -d /tmp 192.168.3.52
```

## Example Usage
```bash
[Expert@MGMT:0]# fwm fetchfile -r "conf/fwopsec.conf" -d /tmp 192.168.3.52
Fetching conf/fwopsec.conf from 192.168.3.52...
Done
[Expert@MGMT:0]#
```

## Security Requirements
- SIC trust must be established between local Management Server and remote source computer
- Remote computer must be a managed Check Point security device
- Authentication occurs through established SIC certificates

## Connection Potential
Links to [[checkpoint-fwm-management-operations-framework]], [[checkpoint-opsec-integration]], [[checkpoint-sic-certificate-management]], [[checkpoint-multidomain-management]], [[checkpoint-configuration-management]]