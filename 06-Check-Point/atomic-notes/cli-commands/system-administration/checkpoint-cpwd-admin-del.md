---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-watchdog-process-management
validation-status: verified
review-frequency: monthly
connections: 0
---

# CheckPoint cpwd_admin del - WatchDog Process Deletion Command

## Core Concept

The `cpwd_admin del` command temporarily removes a monitored process from Check Point's WatchDog database, stopping monitoring while keeping the process alive and running.

## Command Syntax

**Management Server (Gaia Clish/Expert mode):**
```bash
cpwd_admin del -name <Application Name>
```

**Security Gateway/Cluster Member (Gaia Clish/Expert mode):**
```bash
cpwd_admin del -name <Application Name> [-ctx <VSID>]
```

**Scalable Platform Security Group (Expert mode):**
```bash
g_all cpwd_admin del -name <Application Name> [-ctx <VSID>]
```

## Key Parameters

- **Application Name**: Process name as shown in `cpwd_admin list` output (examples: FWM, FWD, CPD, CPM)
- **-ctx <VSID>**: VSX Gateway context specification for Virtual System ID

## Critical Behavior Notes

- **Process Survives**: Deleted process continues running but loses WatchDog monitoring
- **Visibility Impact**: Process disappears from `cpwd_admin list` command output
- **Temporary Change**: Deletion persists only until Check Point services restart or `cpstart` execution
- **Monitoring Cessation**: WatchDog no longer monitors process health or restart failures

## Practical Example

```bash
[Expert@HostName:0]# cpwd_admin del -name FWD
cpwd_admin: successful Del operation
```

## Use Cases

- Troubleshooting process restart loops
- Preventing automatic process restarts during maintenance
- Isolating specific processes for debugging purposes
- Temporary service modification without full service interruption

## Source Quality

- **Primary Source**: Check Point Admin Foundation CLI Guide (Official Documentation)
- **Credibility Score**: 9/10
- **Validation Method**: Direct documentation extraction from authoritative source