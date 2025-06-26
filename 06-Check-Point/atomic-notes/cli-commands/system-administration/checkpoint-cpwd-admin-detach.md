---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: CheckPoint WatchDog Administration
validation-status: verified
domain: security-infrastructure
---

# CheckPoint cpwd_admin detach - Temporary Process Monitoring Suspension

## Core Concept

The `cpwd_admin detach` command temporarily removes a CheckPoint process from WatchDog monitoring while keeping the process alive and running. This creates a monitoring blind spot without service interruption.

## Command Behavior

**Key Characteristics:**
- Process continues running normally after detachment
- WatchDog stops monitoring the detached process
- Detached process disappears from `cpwd_admin list` output
- Changes persist until service restart or `cpstart` execution
- Non-destructive operation - process remains functional

## Syntax Variations

**Management Server:**
```bash
cpwd_admin detach -name <Application Name>
```

**Security Gateway/Cluster Member:**
```bash
cpwd_admin detach -name <Application Name> [-ctx <VSID>]
```

**Scalable Platform (Expert mode):**
```bash
g_all cpwd_admin detach -name <Application Name> [-ctx <VSID>]
```

## Parameters

- **Application Name**: Process name from `cpwd_admin list` APP column (FWM, FWD, CPD, CPM)
- **-ctx <VSID>**: VSX Virtual System context specification (optional)

## Use Cases

**Troubleshooting Scenarios:**
- Preventing WatchDog interference during process debugging
- Isolating process behavior from monitoring effects
- Temporary monitoring suspension for maintenance tasks

**Example Output:**
```bash
[Expert#HostName:0]# cpwd_admin detach -name FWD
cpwd_admin: successful Detach operation
```

## Connection Potential

Links to CheckPoint WatchDog management, process monitoring methodologies, and security infrastructure troubleshooting workflows.