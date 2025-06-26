---
title: CheckPoint Maestro Core Architecture - Networking Requirements
source-credibility: 9/10
verification-status: verified
sources: Official CheckPoint Documentation (2022-2025)
---

# CheckPoint Maestro Core Architecture - Networking Requirements

## Verified Answer

CheckPoint Maestro has specific networking requirements for proper deployment:

### Synchronization Network Requirements
- **Internal Sync (Port 48)**: Connects Orchestrators within the same site using DAC/fiber cables
- **External Sync (Port 47/56)**: For cross-site synchronization, requiring direct fiber links or Layer 2 switches with ≤1ms latency
- **Dedicated Physical Interfaces**: Synchronization requires dedicated interfaces separate from production traffic

### Dual-Site Deployment Requirements
1. **Identical Orchestrator models** at both sites (e.g., MHO-140 at both locations)
2. **Symmetrical Security Group distribution** (minimum 1 gateway per site per group)
3. **Direct DAC/fiber connections** between sites' external sync ports
4. **Latency requirement**: External sync links must maintain ≤1ms latency

### Traffic Distribution Requirements
- **ECMP hashing** at the Orchestrator level for load distribution
- **5-tuple parameters** used for inbound packet hashing across gateways
- **Gateway-specific source NAT** for outbound traffic to preserve path symmetry

### Interface Requirements
- **Minimum 10 Gbps** for downlink interfaces (1 Gbps only supported via SFP converters)
- **Bonding mandatory** for management and uplink ports (802.3ad recommended)
- **VLAN support** on uplink ports and bonds for network integration

## Source Verification
- **Primary Sources**: Check Point Quantum Maestro Administration Guides R80.20SP, R81, R81.10, R82
- **Credibility**: Official vendor documentation
- **Verification Method**: Cross-referenced across multiple official guides and datasheets
- **Last Updated**: 2025

## Additional Context
- Failure to maintain sync-link redundancy triggers automatic failover to standby Orchestrators
- Network architecture dictates port assignment configuration in Gaia OS
- QinQ configuration may be required for multi-site deployments to prevent synchronization failures