---
state: permanent
type: research-atomic
created: 2025-06-20
source-credibility: 8
research-context: VMware VeloCloud CheckPoint integration analysis
validation-status: verified
connections: ["sse-architecture", "vmware-partnership", "cloud-security"]
---

# VMware VeloCloud CheckPoint SSE Integration Protocol

## Core Concept
VMware VeloCloud SD-WAN integrates with CheckPoint security through a **seven-step Security Service Edge (SSE) configuration process** requiring coordinated setup across both platforms for cloud-delivered threat prevention.

## Technical Details
- **Integration Method**: IPsec tunnels from VeloCloud edges to CheckPoint Infinity Portal security POPs
- **Configuration Steps**: Site creation in Infinity Portal → Non-VeloCloud Site object in Orchestrator → Cloud Gateway IP coordination
- **Performance Features**: Dynamic Multipath Optimization (DMPO) with CheckPoint payload inspection
- **Monitoring**: Combined VeloCloud application visibility with CheckPoint Infinity Portal event logging
- **Requirements**: VeloCloud Orchestrator v3.2+ and meticulous DNS/HTTPS inspection alignment

## Research Context
This SSE architecture enables organizations to leverage VeloCloud's WAN optimization while obtaining CheckPoint's cloud-delivered threat prevention without on-premises security hardware.

## Source Quality
- **Primary Sources**: VMware VeloCloud integration guides, CheckPoint SSE documentation
- **Credibility Score**: 8/10
- **Validation Method**: Step-by-step integration procedures verified through official vendor documentation

## Connection Potential
Links to [[sse-deployment-patterns]], [[cloud-security-integration]], [[vmware-checkpoint-partnership]]