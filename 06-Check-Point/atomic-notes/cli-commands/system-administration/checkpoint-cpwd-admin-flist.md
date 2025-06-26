---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-watchdog-administration
validation-status: verified
---

# Check Point cpwd_admin flist Command

## Core Concept
The `cpwd_admin flist` command saves the status of all WatchDog monitored processes to a timestamped file in the `$CPDIR/tmp/` directory, providing a snapshot of process monitoring state for analysis or troubleshooting.

## Technical Implementation

### Basic Syntax
```bash
cpwd_admin flist [-full] [-ctx <VSID>]
```

### Parameters
- **-full**: Shows verbose output with additional process details
- **-ctx <VSID>**: On VSX Gateway, specifies Virtual System context

### Output File Format
- **Location**: `$CPDIR/tmp/cpwd_list_<Epoch_Timestamp>.lst`
- **Naming**: Epoch timestamp ensures unique file identification
- **Content**: Status information for all monitored processes

## Platform-Specific Usage

### Management Server (Gaia Clish/Expert mode)
```bash
cpwd_admin flist [-full]
```

### Security Gateway/Cluster Member
```bash
cpwd_admin flist [-full] [-ctx <VSID>]
```

### Scalable Platform Security Group
- **Gaia gClish**: `cpwd_admin flist [-full] [-ctx <VSID>]`
- **Expert mode**: `g_all cpwd_admin flist [-full] [-ctx <VSID>]`

## Practical Applications
- Process monitoring state documentation
- Troubleshooting baseline establishment
- Historical monitoring comparison
- Support case preparation

## Connection Potential
- Links to other cpwd_admin commands (list, monitor_list, exist)
- Connects to Check Point WatchDog monitoring architecture
- Related to system troubleshooting methodologies
- Associates with log file analysis procedures