---
state: permanent
type: atomic-note
created: 2025-06-18
last-reviewed: 2025-06-18
connections: 2
review-frequency: monthly
source-credibility: 9
research-context: checkpoint-securexl-debugging-troubleshooting
validation-status: verified
source: sk98348 - Best Practices - Security Gateway Performance
---

# CheckPoint SecureXL sim dbg Command

## Core Concept
The sim dbg command controls SecureXL SIM (SecureXL Information Manager) debugging capabilities, enabling detailed troubleshooting and analysis of acceleration module behavior.

## Command Syntax
```bash
sim dbg [options]
sim dbg -h                                    # Help message with modules and flags
sim dbg list                                  # Show currently enabled debug flags
sim dbg resetall                              # Reset all debug flags to default
sim dbg -m MODULE reset                       # Reset specific module debug flags
sim dbg -m MODULE all                         # Enable all flags for module
sim dbg -m MODULE + FLAG1 FLAG2               # Enable specific flags
sim dbg -m MODULE - FLAG1 FLAG2               # Disable specific flags
sim dbg -f SOURCE_IP,SOURCE_PORT,DEST_IP,DEST_PORT,PROTO  # Set connection filter
sim dbg -f reset                              # Reset debugging filter
```

## Functionality
- **Module-based debugging**: Target specific SecureXL components for analysis
- **Flag control**: Enable/disable granular debug categories within modules
- **Connection filtering**: Focus debugging on specific network connections
- **Real-time monitoring**: Live analysis of SecureXL acceleration behavior

## Debug Output
- Debug messages printed to `/var/log/messages` file
- Also output to Linux kernel ring buffer (viewable with `dmesg`)
- Requires kernel debugging options: `fw ctl debug -buf 32000`
- Connection-specific filtering using asterisk (*) wildcards

## Deprecation Notice
**Important**: From R80.20 onwards, sim dbg is deprecated and replaced by `fwaccel dbg` for SecureXL debugging operations.

## Common Debug Modules
Available modules and flags vary by version, but typically include:
- Connection tracking and state management
- Template processing and acceleration decisions  
- Network interface processing
- NAT and routing operations
- Performance monitoring and statistics

## Usage Examples
```bash
# Enable f2f debugging for acceleration violations
sim dbg + f2f

# Set debug filter for SSH connection
sim dbg -f 172.30.1.1,*,172.30.41.90,22,6

# Reset all debugging
sim dbg resetall
```

## SecureXL Context
Essential diagnostic tool for SecureXL Information Manager troubleshooting, providing detailed insight into acceleration decisions and packet processing behavior.

## Connection Potential
- Links to SecureXL acceleration troubleshooting methodologies
- Connects to fwaccel debugging and performance analysis tools
- Related to packet flow debugging and acceleration violation detection