---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Microsoft Active Directory"
source-credibility: 9
management-domain: "userdirectory"
integration-points: ["windows-server", "ldap-integration", "schema-extension", "object-management"]
---

# Microsoft Active Directory Integration

## Core Management Concept
Microsoft Active Directory integration enables Check Point Security Management Server to utilize Windows 2000 advanced server (or later) User Directory services as a user database, supporting existing objects and schema extensions through fwlperson auxiliary classes and fwltemplate object-classes.

## Administrative Context
This enterprise integration capability leverages existing organizational user directory infrastructure, reducing administrative overhead while enabling sophisticated user management through established Windows domain controllers and Active Directory services.

## Implementation Details
- Requires Windows 2000 advanced server or later with Active Directory services enabled
- Directory services activation through dcpromo command or Active Directory setup wizard
- Standard Active Directory structure with DC=domain components and CN=container names
- User and group objects stored under CN=Users and CN=Builtin branches
- Schema definitions maintained in CN=Schema,CN=Configuration branch
- Support for existing Active Directory objects "as is" or extended with fwlperson auxiliary
- User Directory template creation through fwltemplate object-class addition
- Schema extension using schema_microsoft_ad.ldif file for new attribute integration

## Integration Requirements
- Requires Active Directory installation and configuration on Windows servers
- Integrates with SmartConsole for object creation and management capabilities
- Supports Internal Template objects for enforcement without schema extension
- Foundation for enterprise user directory integration and Windows domain authentication workflows