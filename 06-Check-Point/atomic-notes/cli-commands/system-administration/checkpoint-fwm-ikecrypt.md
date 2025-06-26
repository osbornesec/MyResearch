---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-vpn-management
validation-status: verified
source: Check Point Admin Foundation CLI Guide R81.20
---

# CheckPoint fwm ikecrypt IKE Password Encryption Command

## Core Concept
The fwm ikecrypt command encrypts Endpoint VPN Client user passwords using IKE encryption, generating encrypted strings that must be stored in LDAP databases for secure authentication in VPN environments.

## Command Syntax
```
fwm [-d] ikecrypt <Key> <Password>
```

## Parameters
- **-d**: Debug mode flag for command troubleshooting (output should be redirected to file)
- **<Key>**: IKE Key as defined in LDAP Account Unit properties window Encryption tab
- **<Password>**: Plain text password for the Endpoint VPN Client user requiring encryption

## Usage Context
- **Primary purpose**: Secure password storage for Endpoint VPN Client users in LDAP
- **Multi-Domain environment**: Must execute in Domain Management Server context using mdsenv
- **Authentication flow**: Encrypted passwords enable secure IKE-based VPN authentication
- **LDAP integration**: Resulting encrypted string stored directly in LDAP database

## Command Example
```
[Expert@MGMT:0]# fwm ikecrypt MySecretKey MyPassword
00QJH1NHCj6HJGH8ntnKQ7tg
```

## Operational Requirements
- **Multi-Domain Server**: Requires mdsenv context switch before execution
- **Debug considerations**: Use -d flag only for troubleshooting with output redirection
- **Key management**: IKE Key must be pre-configured in LDAP Account Unit properties
- **Security**: Encrypted output provides secure password storage mechanism

## Connection Potential
Links to [[checkpoint-vpn-configuration]], [[ike-authentication-mechanisms]], [[ldap-integration-patterns]], [[endpoint-vpn-management]], [[multi-domain-server-operations]]