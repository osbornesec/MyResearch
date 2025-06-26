---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-vsx-cluster-management
validation-status: verified
connections: 0
review-frequency: quarterly
---

# VSX Util Add Member - Cluster Member Addition Command

## Core Concept
The `vsx_util add_member` command adds a new Security Gateway to an existing Check Point VSX (Virtual System Extension) Cluster, automatically synchronizing the cluster configuration to the new member.

## Technical Implementation
**Command Execution Context:**
- Executed from Expert mode on the Management Server
- Requires VSX Cluster object specification
- Needs new member name and network configuration

**Required Parameters:**
- VSX Cluster object name
- New cluster member name
- Management interface IP address
- Synchronization interface IP address
- One-time SIC (Secure Internal Communication) activation key

## Operational Workflow
**Addition Process:**
1. Command adds new member to management database
2. Pushes current VSX cluster configuration to new member
3. Prompts for immediate reconfiguration decision
4. If accepted: automatic reconfiguration starts
5. If declined: manual `vsx_util reconfigure` required later

**Post-Addition Requirements:**
- New member reboot required after reconfiguration
- SIC establishment for secure communication
- Configuration synchronization verification

## Business Value
**Scalability Benefits:**
- Enables VSX cluster horizontal scaling
- Supports high availability architecture expansion
- Facilitates capacity increase without service disruption

**Operational Efficiency:**
- Automated configuration synchronization
- Streamlined cluster member integration
- Reduced manual configuration errors

## Connection Potential
- Links to VSX cluster architecture concepts
- Connects with SIC security mechanisms
- Related to Check Point cluster management workflows
- Associated with high availability design patterns