---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-vsx-management
validation-status: verified
domain: checkpoint-vsx
concept-api: vsx-util-vsls-command
---

# Checkpoint VSX Util VSLS Command

## Core Concept
The `vsx_util vsls` command provides a menu-driven interface for managing Virtual System Load Sharing (VSLS) configuration in Check Point VSX clusters, enabling load distribution and traffic balancing across cluster members.

## Key Functionality
- **Configuration Display**: Shows current VSLS settings and Virtual System assignments
- **Load Balancing**: Distributes Virtual Systems equally across all cluster members
- **Manual Assignment**: Assigns all Virtual Systems to be active on a single cluster member
- **Priority Control**: Sets priority and weight values for each Virtual System to control traffic distribution
- **Operational Modes**: Toggles between VSLS modes (Active Up vs Primary Up)
- **Configuration Management**: Imports and exports VSLS configuration files

## Technical Context
Virtual System Load Sharing allows assigning Virtual System traffic to different active cluster members, providing both load balancing and redundancy in clustered firewall environments. The command operates through an interactive menu system for configuration management.

## Implementation Purpose
Enables fine-grained control over how Virtual Systems are distributed across VSX cluster members, optimizing performance and ensuring proper failover behavior in high-availability firewall deployments.

## Connection Potential
Links to VSX cluster management, high availability architectures, and load balancing strategies in enterprise security environments.