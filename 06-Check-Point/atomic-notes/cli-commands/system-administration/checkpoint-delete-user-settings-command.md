---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI User Management Commands
validation-status: verified
connections: 3
review-frequency: quarterly
---

# CheckPoint deleteUserSettings Command

## Core Concept
The `deleteUserSettings` command deletes all persistent settings (favorites, cookies, credentials) for specified end-users in CheckPoint environments without removing the user account itself.

## Command Syntax
```bash
deleteUserSettings [-s] <Username1> [<Username2> ...]
```

**Parameters:**
- `-s`: Runs in silent mode (no output to end-user's screen)
- `<Username>`: Specifies user(s) whose settings are to be deleted

## Usage Examples
```bash
# Delete settings for internal user
deleteUserSettings user1

# Delete settings for LDAP user
deleteUserSettings "CN=user1,OU=users,DC=example,DC=com"

# Silent mode for multiple users
deleteUserSettings -s user1 user2 user3
```

## Operational Context
**Primary Use Cases:**
- Resetting user profiles after authentication issues
- Clearing cached credentials during user transitions
- Troubleshooting user-specific access problems
- Security cleanup after suspected compromise

## Administrative Considerations
**Best Practices:**
- Execute during maintenance windows to minimize user impact
- Document user settings reset for audit trails
- Verify user authentication after settings deletion
- Combine with password reset procedures when appropriate

## Related Commands
- `add user <username>` - User account creation
- `delete user <username>` - Complete user account removal
- `show user <username>` - Display user properties and settings

## Source Quality
- **Primary Source**: CheckPoint CLI Reference Documentation
- **Credibility Score**: 9/10
- **Validation Method**: Official documentation cross-reference

## Connection Potential
Links to CheckPoint user management framework, authentication troubleshooting methodologies, and identity management best practices.