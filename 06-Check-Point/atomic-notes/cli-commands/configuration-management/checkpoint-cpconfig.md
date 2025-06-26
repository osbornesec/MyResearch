---
state: permanent
type: atomic-note
created: 2025-06-17
updated: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
domain: checkpoint-administration
command: cpconfig
---

# CheckPoint CLI cpconfig Configuration Tool

## Core Concept

The `cpconfig` command launches the CheckPoint Configuration Tool, an interactive menu-driven utility that configures specific settings for installed CheckPoint products on Security Management Servers, Security Gateways, and Cluster Members.

## Command Syntax

```bash
cpconfig
```

**Important Notes:**
- On Multi-Domain Servers, use `mdsconfig` instead
- In clusters, all members must be configured identically
- On Scalable Platforms (Maestro/Chassis), connect to the applicable Security Group
- Available in both Gaia Clish and Expert mode

## Platform-Specific Usage

### Security Management Server
- Use `cpconfig` directly
- **Multi-Domain Server**: Use `mdsconfig` instead

### Security Gateway/Cluster Member
- Available in Gaia Clish or Expert mode
- Cluster members must be configured identically
- Scalable Platforms: Connect to applicable Security Group first

## Menu Options by Platform Type

### Security Management Server Options
| Option | Description |
|--------|-------------|
| **Licenses and contracts** | Manages CheckPoint licenses and contracts |
| **Administrator** | Configures CheckPoint system administrators |
| **GUI Clients** | Configures SmartConsole GUI client connections |
| **SNMP Extension** | Obsolete - use Gaia Administration Guide instead |
| **Random Pool** | Configures RSA keys for Gaia Operating System |
| **Certificate Authority** | Initializes Internal CA and configures CA FQDN |
| **Certificate's Fingerprint** | Displays ICA fingerprint for server identity verification |
| **Automatic start** | Controls which products start automatically at boot |
| **Exit** | Exits the configuration tool |

### Security Gateway/Cluster Member Options
| Option | Description |
|--------|-------------|
| **Licenses and contracts** | Manages licenses on Security Gateway/Cluster Member |
| **SNMP Extension** | Obsolete - use Gaia Administration Guide |
| **PKCS#11 Token** | Registers cryptographic tokens for Gaia OS |
| **Random Pool** | Configures RSA keys for Gaia Operating System |
| **Secure Internal Communication** | Manages SIC (requires service restart) |
| **Enable/Disable cluster membership** | Controls cluster participation (requires reboot) |
| **Enable/Disable Per Virtual System State** | Controls VSX Virtual System Load Sharing |
| **Enable/Disable ClusterXL Bridge** | Controls ClusterXL Bridge mode (requires reboot) |
| **CheckPoint CoreXL** | Manages CoreXL and Firewall mode (requires reboot) |
| **Automatic start** | Controls automatic product startup |
| **Exit** | Exits the configuration tool |

## Usage Examples

### Basic Command Execution
```bash
[Expert@MyMGMT:0]# cpconfig
This program will let you re-configure
your Check Point Security Management Server configuration.
Configuration Options:
(1) Licenses and contracts
(2) Administrator
(3) GUI Clients
(4) SNMP Extension
(5) Random Pool
(6) Certificate Authority
(7) Certificate's Fingerprint
(8) Automatic start of Check Point Products
(9) Exit
Enter your choice (1-9) :
```

## Critical Configuration Changes

### Operations Requiring Service Restart
- Secure Internal Communication (SIC) changes
- GUI Client configuration modifications

### Operations Requiring System Reboot
- Cluster membership enable/disable
- ClusterXL Bridge mode changes
- CoreXL configuration modifications

## Platform-Specific Considerations

### Multi-Domain Environments
- Use `mdsconfig` instead of `cpconfig` on Multi-Domain Servers
- Configure each domain separately through the appropriate interface

### Cluster Environments
- All cluster members must have identical configuration
- Configuration changes may require coordinated restarts

### Scalable Platforms
- Connect to specific Security Group for configuration
- Maestro and Chassis platforms have specialized requirements

## Source Quality
- **Primary Source**: CheckPoint R81.20 CLI Reference Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from processed technical documentation

## Connection Potential
- Links to SIC management procedures
- Connects to cluster configuration workflows
- Relates to certificate management processes
- Associated with license management systems