---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-installation-procedures
validation-status: verified
domain: checkpoint-administration
category: installation-methods
---

# Check Point Clean Installation Methods

## Core Concept
Multiple pathways exist for performing clean Gaia Operating System installations, each suited to different hardware environments and deployment scenarios.

## Installation Methods

### **Check Point Appliances**
- **Factory Reset**: Reverts to last Clean Install Gaia version
- **Bootable USB**: Custom ISO deployment using ISOmorphic Tool
- **CPUSE Method**: Software-based clean installation on existing Gaia

### **Open Servers**
- **DVD-ROM Installation**: Traditional disc-based deployment
- **Bootable USB**: USB device with Check Point ISO
- **CPUSE Method**: Software-based installation

## Technical Prerequisites
- **Download Source**: R81.20 Home Page SK for ISO files
- **Tool Requirements**: Latest ISOmorphic Tool build for USB creation
- **Hardware Access**: Serial console for appliances, BIOS access for servers
- **Boot Configuration**: Primary boot device modification

## Critical Procedures
- Boot sequence modification and device priority
- BIOS configuration for installation media
- Post-installation boot device reconfiguration
- First Time Configuration Wizard execution

## Cross-References
- [[checkpoint-gaia-first-time-configuration-wizard]]
- [[checkpoint-cpuse-software-installation-framework]]
- [[checkpoint-isomorphic-tool-usb-creation]]

## Integration Points
- CLI commands available post-installation
- Performance optimization requiring clean baseline
- License activation during initial configuration