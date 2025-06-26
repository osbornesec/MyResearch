---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: "Check Point CLI command extraction from administrative foundation guide"
validation-status: verified
source: "Check Point CLI Reference Guide R81.20"
domain: "Process Management"
---

# Check Point CLI Command fw kill

## Core Concept

Terminates specified Check Point processes using configurable signal types, providing precise process control for troubleshooting and maintenance operations.

## Syntax and Parameters

```bash
fw [-d] kill [-t <Signal Number>] <Name of Process>
```

## Key Parameters

- `-d`: Debug mode (redirect output to file recommended)
- `-t <Signal Number>`: Specify signal type to send to process
- `<Name of Process>`: Target Check Point process name

## Signal Management

**Default Signal**: 15 (SIGTERM) if not specified
**Signal Discovery**: Use `kill -l` for available signals and numbers
**Process Resilience**: Some processes may ignore certain signals

## Process Identification

Use `ps auxwf` command to identify Check Point process names before termination.

## Critical Safety Warning

**IMPORTANT**: Ensure killed processes are restarted manually or automatically. Reference knowledge base article sk97638 for guidance.

## Common Use Cases

- Troubleshooting unresponsive Check Point services
- Manual process restart procedures
- Maintenance operations requiring service cycling
- Recovery from process hang conditions

## Signal Types

Different signals provide varying levels of process termination:
- **SIGTERM (15)**: Graceful termination request
- **SIGKILL (9)**: Immediate forced termination
- **SIGHUP (1)**: Hang up signal (often causes restart)

## Process Management Context

Part of broader Check Point service management alongside:
- `cpstart`: Start Check Point services
- `cpstop`: Stop Check Point services
- `cprestart`: Restart Check Point services

## Connection Potential

Links to:
- Check Point process management
- Service troubleshooting procedures
- Signal handling concepts
- Unix/Linux process control
- System maintenance workflows
- Recovery procedures
- Check Point daemon management