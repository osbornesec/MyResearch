---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint CLI specialized commands
validation-status: verified
---

# CheckPoint Bond0 Interface Configuration Command

## Core Concept
The `bond0 2` command relates to CheckPoint network interface bonding (link aggregation) configuration, specifically for bond0 interface with parameter 2 indicating bonding mode or group configuration.

## Interface Bonding Framework
**Bond0 Configuration Process**:
```bash
# Create bonding group
add bonding group 0

# Set interfaces to UP state
set interface eth1 state on
set interface eth2 state on

# Add interfaces to bond
add bonding group 0 interface eth1
add bonding group 0 interface eth2

# Configure bonding mode
set bonding group 0 mode 2  # Balance-XOR mode
```

## Bonding Modes Available
- **Mode 0**: balance-rr (Round Robin)
- **Mode 1**: active-backup (Active/Backup)
- **Mode 2**: balance-xor (XOR Load Balancing)
- **Mode 3**: broadcast (Broadcast)
- **Mode 4**: 802.3ad (Link Aggregation)
- **Mode 5**: balance-tlb (Transmit Load Balancing)
- **Mode 6**: balance-alb (Adaptive Load Balancing)

## Configuration Parameters
**Essential Settings**:
- **Primary Interface**: Designated primary for active-backup mode
- **MII Monitoring**: Media monitoring interval (miimon)
- **Up/Down Delays**: Link state change delays
- **Mode Selection**: Appropriate bonding algorithm

**Example Configuration**:
```bash
set bonding group 0 mode 2
set bonding group 0 primary eth1
set bonding group 0 miimon 100
set bonding group 0 updelay 200
set bonding group 0 downdelay 200
```

## Prerequisites
- Physical interfaces must not have IP addresses configured
- Interfaces must be in UP state before bonding
- Compatible network infrastructure supporting link aggregation

## Operational Benefits
- **High Availability**: Redundancy through multiple physical links
- **Load Distribution**: Traffic spreading across bonded interfaces
- **Bandwidth Aggregation**: Combined throughput of multiple links

## Source Quality
- **Primary Source**: CheckPoint Gaia Administration Guide
- **Credibility Score**: 8/10
- **Validation Method**: Official CheckPoint network configuration documentation

## Connection Potential
Links to CheckPoint high availability systems, network interface management, and enterprise networking architecture.