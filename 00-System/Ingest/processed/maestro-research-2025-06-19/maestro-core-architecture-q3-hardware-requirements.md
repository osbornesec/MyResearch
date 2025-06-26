---
title: CheckPoint Maestro Core Architecture - Hardware Requirements
source-credibility: 9/10
verification-status: verified
sources: Official CheckPoint Documentation and Datasheets
---

# CheckPoint Maestro Core Architecture - Hardware Requirements

## Verified Answer

CheckPoint Maestro has specific hardware requirements for orchestrators and security gateways:

### Orchestrator Hardware Specifications

| **Model** | **Max Threat Prevention** | **Security Groups** | **Gateways/Group** |
|-----------|---------------------------|---------------------|---------------------|
| MHO-6200 | 90 Gbps | 8 | 28 |
| MHO-28600 | 1.5 Tbps | 8 | 52 |

### Gateway Requirements
- **Network Interface Cards**: 100/25GbE QSFP+ (CPAC-2-100/25F-B) with firmware ≥12.22.1002
- **Software Compatibility**: R81.10+ required for mixed-appliance Security Groups
- **Supported Appliances**: 
  - 6000 series (6200, 6400, 6600, 6800)
  - 15000 series (15400, 15600)
  - 16000 series (16200, 16600)
  - 23000 series (23500, 23800, 23900)
  - 26000/28000 series for highest performance

### Physical Deployment Requirements
| **Component** | **MHO-140 Requirements** | **MHO-170 Requirements** |
|---------------|--------------------------|--------------------------|
| Rack Mounting | 4-post rack with 40N force | Tool-less rails |
| Synchronization Port | Port 48 (local sync) | Port 47 (site sync) |
| Uplink Interfaces | 10 Gbps minimum | 25/40/100 Gbps supported |
| Downlink Cables | DAC preferred (cost efficiency) | Fiber for >3m distances |

### SmartConsole Requirements
- **CPU**: Intel Core i3 or equivalent
- **RAM**: 4GB minimum
- **Operating System**: Windows 10/11 or Server 2019/2022
- **Network**: Direct connectivity to management network

## Source Verification
- **Primary Sources**: Check Point Maestro Datasheets, Hardware Compatibility Guides
- **Credibility**: Official vendor specifications
- **Verification Method**: Cross-referenced hardware requirements across multiple official documents
- **Last Updated**: 2025

## Additional Context
- Mixed-appliance Security Groups allow combining different models for flexibility
- Orchestrator choice depends on required throughput and number of gateways
- Firmware updates critical for NIC compatibility
- Power redundancy recommended for all production deployments