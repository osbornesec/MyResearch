---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
source: Check Point CLI Reference Guide R81.20
---

# CheckPoint fwm fingerprint Command for SSL Certificate Verification

## Core Concept
The fwm fingerprint command displays the Check Point SSL certificate fingerprint for verification of secure communication between Management Server and managed Security Gateways, enabling administrators to validate certificate authenticity and establish trusted connections.

## Command Syntax
```
fwm [-d] fingerprint [-d] <IP address of Target> <SSL Port>
fwm [-d] fingerprint [-d] localhost <SSL Port>
```

## Parameters
- **-d**: Debug mode for troubleshooting (redirect output to file recommended)
- **IP address of Target**: IP address of remote managed Security Gateway or Management Server
- **localhost**: Local Management Server reference
- **SSL Port**: SSL port number (default: 443)

## Usage Context
- **Certificate verification**: Validate SSL certificates before establishing SIC (Secure Internal Communication)
- **Security validation**: Confirm authenticity of managed Security Gateways
- **Multi-Domain environment**: Must run in context of applicable Domain Management Server using mdsenv
- **Remote management**: Verify certificates from both local and remote systems

## Output Format
Returns certificate distinguished name (DN) and MD5 fingerprint:
- **#ON**: Certificate subject information with organizational details
- **#FINGER**: 32-character MD5 hash representing certificate fingerprint

## Administrative Requirements
- Expert mode access on Management Server
- Proper network connectivity to target system on specified SSL port
- Domain context for Multi-Domain Server environments

## Connection Potential
Links to [[checkpoint-sic-establishment]], [[certificate-management-security]], [[management-server-operations]], [[secure-communication-protocols]], [[checkpoint-multidomain-management]]