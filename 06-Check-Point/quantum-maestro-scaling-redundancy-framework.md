---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-maestro
source-credibility: 9
validation-status: verified
---

# Quantum Maestro Scaling and Redundancy Framework

## Core Concept

Enterprise scaling and redundancy architecture for Quantum Maestro environments supporting dynamic scaling, multi-site deployment, and automated load balancing with high availability guarantees.

## Dynamic Scaling Architecture

### Auto-Scaling Capabilities (R81.20+)
- **Dynamic SGM Management**: Automatic addition/removal of SGMs based on load requirements
- **Inter-Group Movement**: SGMs can be moved between Security Groups dynamically
- **Scaling Rules**: System follows predefined scaling policies for automated decisions
- **Load-Based Triggering**: Scaling events triggered by real-time performance metrics

### Multi-Site Deployment Patterns
- **Single-Site Configuration**: Up to 14 SGMs per Security Group
- **Dual-Site Configuration**: Maximum 28 SGMs (14 per site) per Security Group
- **Site Independence**: Security Groups work independently, can run different software versions
- **Future Roadmap**: Support for more than two sites planned for future releases

## Redundancy Architecture

### Orchestrator Redundancy
- **Dual Orchestrator Clustering**: No downtime during orchestrator upgrades when clustered
- **Sync Requirements**: MHO-170/175 require 40GB/100GB, MHO-140 requires 10GB sync
- **Single Point of Failure Avoidance**: Two MHOs recommended for production deployments
- **Redundant Sync Support**: Available with R80.20SP JHF Take 210+ (MBS-7993)

### SGM Redundancy Patterns
- **Mixed Appliance Support**: Different appliance models in same Security Group (R81.10+)
- **Certified Combinations**: Refer to sk162373 for supported appliance mix-and-match
- **Individual Upgrades**: SGMs can be upgraded individually or in groups without downtime
- **Appliance Migration**: SGMs can be moved between Security Groups (not simultaneous membership)

## Clustering Mode Support

### Dual-Site Clustering Options
- **SGW Active-Standby**: Security Gateway active-standby mode per Security Group
- **VSX Active-Standby**: Virtual System active-standby mode per Security Group
- **VSLS**: Virtual System Load Sharing configuration
- **Active-Active**: Limited availability feature starting R82
- **Per-Group Configuration**: Different clustering modes can be used for different Security Groups

### Performance Optimization Features

#### CoreXL Integration
- **Dynamic Balancing**: CoreXL Dynamic Balancing supported (R81.20+)
- **Multi-Queue**: Automatic setup, no manual configuration required
- **Hyperflow Support**: Advanced flow processing available (R81.20+)

#### Management and Licensing
- **Individual SGM Monitoring**: Same tools as Scalable Platforms for SGM load monitoring
- **License Management**: Local licensing method required, sync IP must match appliance SKU
- **SIC Architecture**: Each Security Group has own SMO with shared SIC across SGMs

## Research Context

Scaling and redundancy framework from sk147853 (Quantum Maestro FAQ). Provides enterprise deployment patterns for high-availability Check Point architectures.

## Connection Potential

Links to ClusterXL configuration procedures, VSX virtualization architectures, and enterprise deployment methodologies across Check Point scalability documentation.