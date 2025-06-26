---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-nat-policy
validation-status: verified
---

# NAT Rule Base Structure

## Core Concept
NAT Rule Base contains automatic and manual rules for Network Address Translation, enabling modification of source and destination IP addresses and ports as traffic flows through the Security Gateway.

## Security Architecture Context
Functions as a critical component of the Access Control Policy, providing address translation capabilities that enable internal network protection while allowing necessary external communications.

## Key Components
- **Automatic Generated Rules**: System-created NAT rules based on object configurations
- **Manual Rules**: Administrator-defined custom NAT transformations
- **Original Address Fields**: Source, destination, and service specifications before translation
- **Translated Address Fields**: Modified source, destination, and service values after translation
- **Installation Targets**: Specific gateways or clusters where rules apply

## Rule Structure Elements
Each NAT rule specifies original source/destination/services, translated source/destination/services, installation targets, and comments for documentation.

## Source Quality
- **Primary Source**: Check Point R81.20 Security Gateway Administration Guide (2022)
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
Links to Access Control Policy framework, network object management, Security Gateway enforcement, and cluster deployment configurations.