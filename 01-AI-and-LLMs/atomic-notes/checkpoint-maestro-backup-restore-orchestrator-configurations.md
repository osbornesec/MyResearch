---
state: permanent
type: atomic-note
created: 2025-06-20
source-credibility: 9
research-context: checkpoint-maestro-operational-management
validation-status: verified
---

# CheckPoint Maestro Backup Restore Orchestrator Configurations

## Core Concept
CheckPoint Maestro requires specialized backup procedures for orchestrator configurations that differ from standard gateway backups. The orchestrator manages hardware resources, security group assignments, and inter-site synchronization settings that are critical for disaster recovery.

## Key Components
- **Orchestrator Configuration**: Hardware management, resource allocation, network distribution settings
- **Security Group Mappings**: SMO assignments and security group member relationships  
- **Site Synchronization**: Dual-site configuration and VLAN mappings
- **License Assignments**: Hardware-specific licensing and SIC certificates

## Backup Procedures
1. **WebUI Method**: Access Maintenance > System Backup, select backup location (local, SCP, FTP, management server)
2. **CLI Method**: Use `backup` command in Gaia Clish for scripted workflows
3. **Orchestrator-Specific**: Follow SK174202 guidance for orchestrator-specific configurations
4. **Exclusions**: Configure `/etc/backup.conf` to exclude non-essential files

## Restore Operations
- **Factory Reset**: Hardware reset button (12+ seconds) followed by USB boot Gaia OS reinstall
- **Configuration Restore**: Upload backup via WebUI Restore section, requires reboot
- **License Rehosting**: Manual reassignment of licenses to new orchestrator IP addresses
- **SIC Re-establishment**: Reset Secure Internal Communication certificates in SmartConsole

## Critical Considerations
- Orchestrator backups exclude Security Group-specific data
- SMO backups depend on orchestrator health and availability
- Dual-site configurations require coordination between paired orchestrators
- Restoration process requires specific sequence: orchestrator first, then security groups

## Source Quality
- **Primary Source**: CheckPoint R80.20SP Maestro Admin Guide, SK174202
- **Credibility Score**: 9/10
- **Validation Method**: Multi-source verification from official CheckPoint documentation