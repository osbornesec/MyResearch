---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint fw ctl conntab Command Connection Table Display

## Core Concept

The `fw ctl conntab` command displays a formatted list of current connections from the CheckPoint Connections kernel table (ID 8158), providing simplified information about active network connections on the Security Gateway.

## Command Syntax

```bash
fw [-d] ctl conntab
    {-h | -help}
    -sip=<Source IP Address in Decimal Format>
    -sport=<Port Number in Decimal Format>
    -dip=<Destination IP Address>
    -dport=<Port Number in Decimal Format>
    -proto=<Protocol Name>
    -service=<Name of Service>
    -rule=<Rule Number in Decimal Format>
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-d` | Runs the command in debug mode (use only for troubleshooting) |
| `-h` or `-help` | Shows help information |
| `-sip=<IP>` | Filters output by specified Source IP Address in decimal format |
| `-sport=<Port>` | Filters output by specified Source Port number in decimal format |
| `-dip=<IP>` | Filters output by specified Destination IP Address |
| `-dport=<Port>` | Filters output by specified Destination Port number in decimal format |
| `-proto=<Protocol>` | Filters output by specified Protocol name (TCP, UDP, ICMP) |
| `-service=<Service>` | Filters output by specified Service name |
| `-rule=<Number>` | Filters output by specified Rule number in decimal format |

## Usage Examples

### Default Output
```bash
[Expert@MyGW:0]# fw ctl conntab
<inbound, src=[192.168.254.1,54201], dest=[192.168.254.45,22], TCP): 3593/3605, rule=2, top_state=TCP_ESTABLISHED, service=ssh(681), ifnin=1, ifnout=1, conn_modules: Authentication, PD=1>
<inbound, src=[192.168.254.45,59249], dest=[192.168.254.1,53], UDP): 20/40, rule=0, service=domain_udp(335), ifnout=1, conn_modules: Authentication, PD=1>
```

### Filter by Destination Port
```bash
[Expert@MyGW:0]# fw ctl conntab -dport=22
<inbound, src=[192.168.254.1,54201], dest=[192.168.254.45,22], TCP): 3594/3605, rule=2, top_state=TCP_ESTABLISHED, service=ssh(681), ifnin=1, ifnout=1, conn_modules: Authentication, PD=1>
```

## Best Practices

- Use `fw ctl conntab` for simplified connection information
- Use `fw tab -t connections -f` for detailed (technical) connection information
- When using `-d` debug parameter, redirect output to a file or use script command
- Multiple parameters can be specified simultaneously for precise filtering

## Output Format Information

The output displays connection details including:
- Direction (inbound/outbound)
- Source IP and port
- Destination IP and port
- Protocol type
- Connection state
- Rule number that allowed the connection
- Service name and ID
- Interface information
- Connection modules involved

## Source Quality
- **Primary Source**: CheckPoint CLI Reference Guide R81.20
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential
- [[checkpoint-fw-tab-connections]] - Related detailed connection table command
- [[checkpoint-kernel-tables]] - Kernel table system overview
- [[checkpoint-stateful-inspection]] - Connection tracking mechanism
- [[checkpoint-connection-modules]] - Connection processing modules
- [[checkpoint-troubleshooting-connections]] - Connection troubleshooting methods