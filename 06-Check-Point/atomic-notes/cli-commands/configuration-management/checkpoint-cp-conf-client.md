---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI commands comprehensive analysis
validation-status: verified
---

# CheckPoint cp_conf client Command - GUI Client Access Configuration

## Core Concept

The `cp_conf client` command configures which GUI clients are allowed to connect with SmartConsole to the Security Management Server. This command provides granular control over management access by defining authorized IP addresses, hostnames, or network ranges that can establish SmartConsole connections.

## Command Syntax

| Command | Parameters | Description |
|---------|------------|-------------|
| `cp_conf client` | `add <GUI Client>` | Adds a specific client to allowed list |
| | `createlist <Client1> <Client2> ...` | Creates new list replacing existing entries |
| | `del <Client1> <Client2> ...` | Removes specified clients from list |
| | `get` | Shows current allowed GUI clients list |

## Functionality Overview

**Primary Functions:**
- **Access Control**: Restricts SmartConsole connections to authorized clients only
- **Client Management**: Add, remove, or replace authorized GUI client entries
- **Security Enforcement**: Prevents unauthorized management access attempts
- **Flexible Addressing**: Supports IP addresses, hostnames, ranges, and wildcards

**Supported Client Types:**
- Individual IP addresses (e.g., `172.20.168.15`)
- Hostnames (e.g., `MySmartConsoleHost`)
- Network ranges with subnet masks (e.g., `172.20.168.0/255.255.255.0`)
- Wildcard patterns (e.g., `172.20.168.*`)
- Universal access (`"Any"` - allows all clients)

## Usage Context

**Prerequisites:**
- Expert mode access on Security Management Server
- Administrative privileges for client configuration
- Network connectivity verification for specified clients

**Important Notes:**
- Multi-Domain Server does not support this command
- Corresponds to "GUI Clients" option in cpconfig menu
- Changes take effect immediately without service restart

## Implementation Examples

**Adding Individual IP Address:**
```bash
[Expert@MGMT:0]# cp_conf client add 172.20.168.15
172.20.168.15 was successfully added.
[Expert@MGMT:0]# cp_conf client get
172.20.168.15
```

**Adding Hostname:**
```bash
[Expert@MGMT:0]# cp_conf client add MySmartConsoleHost
MySmartConsoleHost was successfully added.
```

**Adding Network Range:**
```bash
[Expert@MGMT:0]# cp_conf client add 172.20.168.0/255.255.255.0
172.20.168.0/255.255.255.0 was successfully added.
```

**Creating New Client List:**
```bash
[Expert@MGMT:0]# cp_conf client createlist 192.168.40.0/255.255.255.0 172.30.40.55
New list was created successfully
[Expert@MGMT:0]# cp_conf client get
192.168.40.0/255.255.255.0
172.30.40.55
```

**Allowing Universal Access:**
```bash
[Expert@MGMT:0]# cp_conf client add "Any"
Any was successfully added.
```

## Security Implications

**Access Control Benefits:**
- Prevents unauthorized SmartConsole connections from unknown hosts
- Provides audit trail of authorized management workstations
- Reduces attack surface by limiting management access points
- Supports compliance requirements for administrative access controls

**Best Practices:**
- Use specific IP addresses or hostnames instead of "Any" when possible
- Regularly review and update authorized client list
- Remove obsolete entries when workstations are decommissioned
- Document authorized clients for security auditing purposes

**Network Considerations:**
- DNS resolution must work properly for hostname entries
- Firewall rules must permit SmartConsole traffic from specified clients
- NAT/PAT configurations may affect IP address matching
- Dynamic IP addresses require careful consideration or use of ranges

## Integration Context

**Related Configuration:**
- Works in conjunction with SIC (Secure Internal Communication) settings
- Coordinates with firewall rules for management interface access
- Integrates with administrator authentication and authorization policies
- Supports certificate-based authentication when configured

**cpconfig Menu Equivalent:**
This command provides CLI access to the same functionality available through:
- cpconfig → Secure Internal Communication → GUI Clients

## Source Quality

- **Primary Source**: CheckPoint R81.20 Administration Foundation CLI Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from authoritative CheckPoint documentation
- **Technical Accuracy**: Verified through official command reference with practical examples

## Connection Potential

- Links to [[checkpoint-smartconsole-authentication]]
- Connects with [[checkpoint-secure-internal-communication-sic]]
- Relates to [[checkpoint-cp-conf-ca]]
- Integrates with [[checkpoint-management-server-security]]
- Foundation for [[checkpoint-administrative-access-controls]]