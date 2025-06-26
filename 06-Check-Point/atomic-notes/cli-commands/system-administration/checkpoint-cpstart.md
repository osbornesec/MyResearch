---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
domain: checkpoint-administration
---

# Check Point cpstart Command - Service Startup

## Core Concept

The `cpstart` command manually starts all Check Point processes and applications on Security Gateways, Management Servers, and Multi-Domain Servers. It is the primary command for initiating Check Point services after a shutdown or system restart.

## Command Syntax

### Basic Syntax
```bash
cpstart
```

### Advanced Syntax (Security Gateways)
```bash
cpstart [-fwflag {-default | -proc | -driver}]
```

### Scalable Platform (Expert Mode)
```bash
g_all cpstart [-fwflag {-default | -proc | -driver}]
```

## Parameters and Options

| Parameter | Description | Usage Context |
|-----------|-------------|---------------|
| No parameters | Standard service startup | Most common usage |
| -fwflag -default | Shuts down processes and loads Default Filter policy | Debug/troubleshooting |
| -fwflag -proc | Maintains connections table and current kernel policy | Service restart without disruption |
| -fwflag -driver | Unloads kernel modules (leaves system unprotected) | Expert troubleshooting only |

## Usage Context

### Primary Use Cases
- **Service Recovery**: After running `cpstop` command
- **System Maintenance**: Following configuration changes
- **Troubleshooting**: Restarting services to resolve issues
- **Policy Application**: Loading policies after configuration changes

### Environment-Specific Behavior
- **Security Management Server**: Starts management services and database
- **Security Gateway**: Starts firewall engine and security policies
- **Multi-Domain Server**: Requires domain context (`mdsenv`)
- **Cluster Members**: Integrates with ClusterXL startup procedures

## Critical Dependencies

### Prerequisites
- Must run from Expert mode on most platforms
- Check Point products must be of same version (for remote execution)
- Proper licensing must be in place

### Post-Execution Effects
- All Check Point daemons and processes start
- Security policies load automatically
- Database connections establish
- Cluster synchronization initiates (if applicable)

## Common Usage Patterns

### Standard Service Restart
```bash
cpstop
cpstart
```

### Configuration Change Application
```bash
# After certificate changes
cpstop ; cpstart
```

### Remote Gateway Management
```bash
cprinstall cpstart <Gateway_Object_Name>
```

## Integration Points

### Related Commands
- `cpstop` - Service shutdown counterpart
- `cprestart` - Combined stop/start operation
- `cpwd_admin` - WatchDog process management
- `fw fetch` - Policy loading alternative

### System Integration
- WatchDog process monitoring
- Policy installation workflow
- Cluster member coordination
- Multi-Domain Server context management

## Operational Notes

### Execution Requirements
- Expert mode access required
- Administrative privileges necessary
- Network connectivity for remote operations
- Sufficient system resources for service startup

### Performance Considerations
- Startup time varies by system configuration
- Memory allocation occurs during process initialization
- Network services become available progressively
- Policy compilation happens during startup phase

## Source Attribution

**Primary Source**: Check Point CLI Reference Guide (Admin Foundation)
**Validation Method**: Official Check Point documentation analysis
**Context**: Comprehensive CLI command reference for R81.20+ versions