---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-watchdog-administration
validation-status: verified
connections: 2
review-frequency: quarterly
---

# CheckPoint cpwd_admin exist Command - WatchDog Process Status Check

## Core Concept
The `cpwd_admin exist` command checks whether the Check Point WatchDog process (cpwd) is alive and running on the system.

## Command Syntax
**Management Server, Security Gateway/Cluster Member (Gaia Clish or Expert mode):**
```bash
cpwd_admin exist
```

**Scalable Platform Security Group (Gaia gClish):**
```bash
cpwd_admin exist
```

**Scalable Platform Security Group (Expert mode):**
```bash
g_all cpwd_admin exist
```

## Expected Output
When WatchDog is running:
```bash
[Expert@HostName:0]# cpwd_admin exist
cpwd_admin: cpWatchDog is running
```

## Technical Context
- **Purpose**: Basic health check for the Check Point WatchDog daemon
- **No Parameters**: Command takes no additional options or parameters
- **Universal Compatibility**: Works across all Check Point platform types
- **Return Status**: Provides immediate confirmation of cpwd process status

## Related Commands
- `cpwd_admin list` - Shows status of all monitored processes
- `cpwd_admin monitor_list` - Shows actively monitored processes
- `cpwd_admin kill` - Terminates the WatchDog process

## Source Quality
- **Primary Source**: Check Point Admin Foundation CLI Guide
- **Credibility Score**: 9/10 (Official documentation)
- **Validation Method**: Direct documentation extraction