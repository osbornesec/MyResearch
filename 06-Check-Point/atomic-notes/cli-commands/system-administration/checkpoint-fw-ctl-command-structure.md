---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint firewall command validation
validation-status: verified
---

# CheckPoint fw ctl Command Structure and Valid Subcommands

## Core Concept
The `fw ctl` command controls the CheckPoint Firewall kernel module and provides access to various kernel-level operations and statistics. It does NOT include a "logfrag" subcommand.

## Research Context
Investigation into "fw ctl logfrag" revealed this is not a valid or documented CheckPoint command. All official CheckPoint CLI documentation (R80.30/R81) confirms this subcommand does not exist.

## Valid fw ctl Subcommands
### Documented and Supported Subcommands:
- **arp**: Shows configured Proxy ARP entries
- **bench**: Runs CPU benchmark tests
- **block**: Blocks all connections to/from/through Security Gateway
- **chain**: Shows list of Firewall Chain Modules
- **conn**: Shows list of Firewall Connection Modules
- **conntab**: Shows formatted list of current connections
- **cpasstat**: Generates Check Point Active Streaming statistics
- **debug/kdebug**: Generates kernel debug messages
- **dlpkstat**: Generates Data Loss Prevention kernel statistics
- **get**: Shows value of specified kernel parameter
- **iflist**: Shows interface names and internal numbers
- **install**: Tells OS to start passing packets to Firewall
- **leak**: Generates leak detection report
- **pstat**: Shows Security Gateway internal statistics
- **set**: Configures kernel parameter values
- **tcpstrstat**: Generates TCP Streaming statistics
- **uninstall**: Stops packet processing and unloads policy

## Log Management Alternatives
For log-related operations, use these documented commands instead:
- `fw log -f -t`: Real-time log monitoring
- `fw logswitch`: Log rotation
- `fwm logexport`: Export logs to CSV
- `fw repairlog`: Repair corrupted log files

## Source Quality
- **Primary Source**: CheckPoint R81 CLI Reference Guide
- **Credibility Score**: 9/10
- **Validation Method**: Multi-source verification via Perplexity research

## Connection Potential
- Links to CheckPoint firewall administration concepts
- Connects to kernel-level troubleshooting methodologies
- Related to CheckPoint CLI command structure patterns
- Bridges to log management and monitoring workflows