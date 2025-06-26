---
state: permanent
type: atomic-note
created: 2025-06-17
source: checkpoint-admin-foundation-cliguide-processed-2025-06-17.md
source-credibility: 9
research-context: Check Point license management commands
validation-status: verified
connections: 3
review-frequency: monthly
---

# Check Point cplic del object-name Command

## Core Concept

The `cplic del <object name>` command detaches a Central license from a remote managed Security Gateway or Cluster Member in Check Point environments. When executed, it automatically updates the license repository while keeping the Central license available as an unattached license for future use.

## Technical Details

**Syntax:**
```bash
cplic del {-h | -help}
cplic [-d] del <Object Name> [-F <Output File>] [-ip <Dynamic IP Address>] <Signature>
```

**Key Parameters:**
- `<Object Name>`: Name of the Security Gateway/Cluster Member object as configured in SmartConsole
- `<Signature>`: License signature string (obtainable via `cplic print` command)
- `-F <Output File>`: Saves command output to specified file
- `-ip <Dynamic IP Address>`: For DAIP Security Gateways with specific IP addresses
- `-d`: Debug mode for troubleshooting

## Operational Context

**Purpose**: License detachment from remote managed devices
**Scope**: Central license management on Management Servers
**Impact**: License remains in repository as unattached resource
**Automation**: Repository updates occur automatically during execution

## Connection Potential

- [[checkpoint-cplic-put-object-name]] - License attachment counterpart
- [[checkpoint-license-repository-management]] - Repository operations
- [[checkpoint-central-vs-local-license-architecture]] - Licensing models