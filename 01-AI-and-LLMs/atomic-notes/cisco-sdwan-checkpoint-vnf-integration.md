---
state: permanent
type: research-atomic
created: 2025-06-20
source-credibility: 8
research-context: CheckPoint Cisco SD-WAN integration analysis
validation-status: verified
connections: ["cisco-partnership", "vnf-hosting", "sdwan-security"]
---

# Cisco SD-WAN CheckPoint VNF Integration Architecture

## Core Concept
Cisco and CheckPoint enable **secure cloud-delivered SD-WAN** through Cisco ENCS platforms hosting CheckPoint Quantum Virtual Network Functions (VNFs) as service-chained security elements within SD-WAN policies.

## Technical Details
- **Platform Support**: Cisco ENCS 5000 series and IOS XE SD-WAN routers
- **Integration Method**: CheckPoint VM-300 firewalls as VNFs with SR-IOV interfaces
- **Management**: Cisco vManage centralizes policy for both SD-WAN paths and CheckPoint security rules
- **Performance**: 99.7% malware catch rate with local internet breakouts
- **Limitations**: Older Cisco hardware or non-ENCS platforms cannot host CheckPoint VNFs

## Research Context
This partnership addresses the convergence of SD-WAN connectivity and advanced threat prevention in a unified platform, critical for secure digital transformation initiatives.

## Source Quality
- **Primary Sources**: Cisco-CheckPoint joint solution briefs, validation testing reports
- **Credibility Score**: 8/10
- **Validation Method**: Technical validation through WWTechnology testing and deployment guides

## Connection Potential
Links to [[vnf-orchestration]], [[secure-sdwan-architecture]], [[cisco-checkpoint-partnership]]