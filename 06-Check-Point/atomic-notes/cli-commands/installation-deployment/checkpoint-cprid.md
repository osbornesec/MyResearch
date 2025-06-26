---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-administration
validation-status: verified
connections: 3
review-frequency: monthly
---

# CheckPoint Remote Installation Daemon (cprid)

## Core Concept
The CheckPoint Remote Installation Daemon (cprid) is a critical system service that enables remote upgrade and installation of CheckPoint products on managed Security Gateways from the Security Management Server.

## Technical Details
- **Execution Mode**: Expert mode only
- **Primary Function**: Remote installation and upgrade operations
- **Required Dependencies**: 
  - SIC Trust establishment between SMS and Security Gateway
  - cpd daemon must be running

## Available Commands
- `cpridstart` - Starts the cprid daemon
- `cpridstop` - Stops the cprid daemon  
- `run_cprid_restart` - Stops and restarts the cprid daemon

## Integration Requirements
- **Multi-Domain Server**: Must run in context of applicable Domain Management Server using `mdsenv`
- **CPU Affinity**: Typically assigned to CPUs 2-7 in multi-core environments
- **Process Management**: Separate from standard cpstart/cpstop commands

## Critical Dependencies
Required for remote gateway operations including:
- Remote policy installation
- Security Gateway service management
- Gateway reboot operations
- Remote installation processes

## Connection Potential
- Links to CheckPoint daemon architecture
- Connects to remote management workflows
- Relates to SIC trust establishment procedures
- Associates with Multi-Domain Server operations

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation