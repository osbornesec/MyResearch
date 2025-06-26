---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-network-management-commands
validation-status: verified
domain: network-security
---

# CheckPoint comp_init_policy Command - Initial Policy Generation

## Core Concept

The `comp_init_policy` command in CheckPoint CLI is used to generate, load, or remove the Initial Policy on Security Gateways or Cluster Members. This Initial Policy provides essential baseline protection and enables necessary internal communications between the Management Server and Security Gateway before any custom Security Policy installation.

## Network Management Function

**Primary Purpose**: Generates default "implied rules" that establish basic security posture and allow critical CheckPoint internal communications during initial setup or maintenance periods.

**Key Operations**:
- `-g` flag: Generates and loads Initial Policy if none exists
- `-u` flag: Removes Initial Policy and prevents future automatic generation
- Default behavior: Creates restrictive policy blocking most traffic except essential CheckPoint communications

## Security Control Implementation

The Initial Policy serves as a protective measure during vulnerable periods:
- **Pre-deployment protection**: Active during first gateway setup before policy installation
- **Maintenance protection**: Enforced during upgrades, SIC resets, or license expiration
- **Communication enablement**: Allows only necessary Management-to-Gateway communications
- **Automatic deactivation**: Becomes inactive once user-defined policy is successfully installed

## Operational Context

**When Active**:
- Fresh gateway installations
- Post-upgrade scenarios
- After Secure Internal Communication (SIC) reset
- License expiration situations

**Critical Dependencies**:
- Secure Internal Communication (SIC) establishment
- Management Server connectivity requirements
- Gateway licensing status

## Technical Implementation

**Command Structure**:
```bash
$FWDIR/bin/comp_init_policy -g    # Generate and load
$FWDIR/bin/comp_init_policy -u    # Remove and disable
```

**Security Model**: Implements deny-all approach with minimal exceptions for essential CheckPoint service communications, ensuring maximum security during transitional states.

## Source Quality
- **Primary Source**: CheckPoint R82 Security Gateway Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation cross-reference

## Connection Potential
[[checkpoint-fwboot-default]] - Boot-time security configuration
[[checkpoint-secure-configuration-verification-scv]] - Security validation procedures
[[checkpoint-policy-installation-acceleration]] - Policy deployment optimization