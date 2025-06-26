---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-admin-management
validation-status: verified
source: Check Point Admin Foundation CLI Guide R81.20
---

# CheckPoint cp_conf admin Command for System Administrator Management

## Core Concept
The cp_conf admin command configures Check Point system administrators for the Security Management Server, providing comprehensive user management including permissions, authentication, and role assignment for administrative access control.

## Command Syntax
```
cp_conf admin
    -h
    add [<UserName> <Password> {a | w | r}]
    add ~gaia [{a | w | r}]
    del <UserName1> <UserName2> ...
    get
    get -gaia
```

## Permission Levels
- **a (Admin)**: Read/Write permission for all products with permission to manage administrators
- **w (Write)**: Read/Write permission for all products without permission to manage administrators  
- **r (Read)**: Read Only permission for all products
- **c (Customized)**: Granular permissions for specific products (SmartUpdate, Monitoring, etc.)

## Key Operations
- **Administrator creation**: Add new system administrators with specified permissions
- **Gaia integration**: Link Gaia administrator user with Check Point permissions
- **Permission modification**: Update existing administrator permissions and roles
- **Administrator deletion**: Remove system administrators from the management server
- **Status display**: Show current administrator configurations and permissions

## Important Limitations
- Multi-Domain Server does not support this command
- Only one administrator can be defined in cpconfig menu initially
- Additional administrators require SmartConsole for full management capability
- Corresponds to Administrator option in cpconfig menu

## Usage Context
Primary use cases include initial administrator setup during system deployment, Gaia user integration for unified management access, permission modifications for security compliance, and administrator auditing for access control verification.

## Connection Potential
Links to [[checkpoint-cpconfig-menu-system]], [[checkpoint-smartconsole-management]], [[gaia-administrator-integration]], [[security-management-server-administration]], [[checkpoint-multi-domain-management]]