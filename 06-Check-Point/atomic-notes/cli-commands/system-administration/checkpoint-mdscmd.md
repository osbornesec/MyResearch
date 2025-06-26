---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: multi-domain-management
source-lines: 13614-13663
---

# CheckPoint mdscmd - Multi-Domain Server Command Interface (Obsolete)

## Command Purpose
Legacy command-line utility for executing various administrative operations on Check Point Multi-Domain Servers in versions prior to R80. Starting from R80, this command is obsolete and replaced by mgmt_cli and other modern tools.

## Obsolescence Status
**DEPRECATED in R80+**: All mdscmd functionality has been superseded by modern management interfaces. Users must migrate to alternative commands or perform operations through SmartConsole.

## Historical Command Categories
- **Domain management**: adddomain, deletedomain, migratemanagement
- **Administrator management**: addadministrator, deleteadministrator, assignadmin
- **Log server operations**: addlogserver, deletelogserver
- **Global policy operations**: assign-globalpolicy, install-globalpolicy, remove-globalpolicy
- **Management operations**: addmanagement, deletemanagement, startmanagement, stopmanagement

## R80+ Migration Mapping
Key mdscmd commands replaced by:
- **Domain operations**: `mgmt_cli add-domain`, `mgmt_cli delete-domain`
- **Global assignment**: `mgmt_cli set globalassignment`, `mgmt_cli assign-globalassignment`
- **Management control**: `mdsstart_customer`, `mdsstop_customer`
- **Administrator management**: `mgmt_cli set-administrator`
- **Cross-domain queries**: No direct replacement (use SmartConsole)

## Usage Context
Multi-Domain Server environments where centralized management of multiple security domains is required. Essential for pre-R80 MDS administration but completely replaced in modern versions.

## Legacy Architecture
Provided centralized command-line interface for MDS operations including domain lifecycle management, administrator assignment, global policy distribution, and cross-domain query execution.

## Connection Potential
Links to [[checkpoint-multi-domain-server-architecture]], [[checkpoint-mgmt-cli-migration]], [[checkpoint-smartconsole-management]], [[legacy-command-modernization]]