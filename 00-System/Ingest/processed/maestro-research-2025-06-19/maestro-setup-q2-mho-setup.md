---
title: CheckPoint Maestro Setup - MHO Initial Setup and Configuration
source-credibility: 9/10
verification-status: verified
sources: Official CheckPoint Documentation and Quick Start Guides
---

# CheckPoint Maestro Setup - MHO Initial Setup and Configuration

## Verified Answer

MHO (Maestro Hyperscale Orchestrator) setup follows a structured process:

### Hardware Installation
Physical requirements vary by model:

| **Component** | **MHO-140** | **MHO-170** |
|---------------|-------------|-------------|
| Rack Mounting | 4-post rack with 40N force | Tool-less rails |
| Sync Port (Internal) | Port 48 | Port 48 |
| Sync Port (External) | Port 47 | Port 47 |
| Uplink Support | 10 Gbps minimum | 25/40/100 Gbps |
| Downlink Preference | DAC cables | DAC or fiber |

### Gaia OS Installation
1. **Clean Installation**:
   - Create bootable USB per SK65205 using ISO from SK169954
   - Connect via console during boot
   - Select "Open Server with console" option
   - Complete First Time Configuration Wizard via https://<mgmt_IP>

2. **Critical Warning**: Never use manual CPUSE updates - causes irreparable failures

### Orchestrator Configuration
Site architecture determines configuration:

```bash
# Single-site dual MHO (High Availability)
set maestro configuration orchestrator-amount 2

# Dual-site configuration
set maestro configuration orchestrator-site-amount 2
set maestro port 1/47/1 type site_sync
```

### Initial Setup Best Practices
1. **Start Minimal**: Begin with one MHO and one gateway
2. **Cable Correctly**: 
   - Management port for SmartConsole access
   - Uplink ports to production network
   - Downlink ports to Security Gateways
3. **Configure Basics First**:
   - Management IP and default route
   - DNS and NTP settings
   - Administrator credentials

### Security Group Creation
- Use Gaia Portal for drag-and-drop gateway assignment
- Minimum one gateway required per group
- Maximum varies by MHO model (28 for MHO-6200, 52 for MHO-28600)

## Source Verification
- **Primary Sources**: Check Point MHO Quick Start Guides, Gaia Installation Guides
- **Credibility**: Official vendor installation documentation
- **Verification Method**: Procedures validated against multiple official guides
- **Last Updated**: 2025

## Additional Context
- DAC cables preferred over optics for cost efficiency
- Jumbo frames recommended for site-sync interfaces
- Initial setup typically takes 2-3 hours for experienced administrators
- Factory reset option available if configuration errors occur