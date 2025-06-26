---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint CLI fw up_execute - Offline Unified Policy Execution

## Core Concept
The `fw up_execute` command executes the offline Unified Policy on CheckPoint Security Gateways, allowing administrators to test and validate policy rules against specific traffic parameters without affecting live traffic processing.

## Command Syntax
```bash
fw up_execute [parameters]
```

## Supported Parameters

| Parameter | Description | Format |
|-----------|-------------|--------|
| `ipp=<Protocol>` | IANA Protocol Number (mandatory) | Hexadecimal (TCP=6, UDP=17, ICMP=1) |
| `src=<IP>` | Source IP address | IPv4 address |
| `dst=<IP>` | Destination IP address | IPv4 address |
| `sport=<Port>` | Source port number | Decimal format |
| `dport=<Port>` | Destination port number | Decimal format (mandatory for TCP/UDP) |
| `protocol=<Name>` | Protocol detection name | HTTP, HTTPS, etc. |
| `application=<Name>` | Application/Category name | As defined in SmartConsole |
| `-d` | Debug mode | Use only for troubleshooting |

## Supported Features
- Source and Destination IP addresses
- IP address objects
- Simple service objects (destination port, source port, protocol)
- Protocol detection
- Application detection

## Limitations (Not Supported)
- Implied rules
- Security Zones
- Access Roles
- Domain Objects
- Updatable Objects
- Dynamic Objects
- Other/DCERPC services
- Content awareness
- VPN objects
- Resource objects
- Mobile Access applications
- Time objects

## Usage Examples

### Example 1: Basic IP and Protocol Test
```bash
[Expert@MyGW:0]# fw up_execute src=126.200.49.240 dst=10.1.1.1 ipp=1
Rulebase execution ended successfully.
Overall status:
Active clob mask: 0
Required clob mask: 0
Match status: MATCH
Match action: Accept
Per Layer:
Layer name: Network
```

### Example 2: Application and Protocol Detection
```bash
[Expert@MyGW:0]# fw up_execute src=10.1.1.1 ipp=6 dport=8080 protocol=HTTP application=Facebook application=Opera
Rulebase execution ended successfully.
Overall status:
Active clob mask: 0
Required clob mask: 0
Match status: MATCH
Match action: Accept
```

## Technical Context
This command operates on offline Unified Policy, making it valuable for policy testing and validation without disrupting live traffic processing. The command provides detailed match status information including layer-specific results and actions.

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from official CLI guide

## Connection Potential
- [[checkpoint-unified-policy-management]] - Policy management concepts
- [[checkpoint-cli-troubleshooting-methodologies]] - Debugging workflows
- [[checkpoint-firewall-rule-testing]] - Policy validation strategies
- [[checkpoint-corexl-performance-architecture]] - Multi-core processing context
- [[checkpoint-security-policy-offline-testing]] - Testing methodologies