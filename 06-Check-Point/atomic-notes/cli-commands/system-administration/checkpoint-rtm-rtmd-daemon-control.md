---
state: permanent
type: atomic-note
created: 2025-06-18
last-reviewed: 2025-06-18
connections: 5
review-frequency: monthly
source-credibility: 8
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint RTM Rtmd Daemon Control

## Core Concept

The `rtm rtmd` command in CheckPoint Security Gateways manually starts the Real-Time Monitoring Daemon (rtmd), which is the backend process responsible for collecting and providing real-time traffic statistics for the SmartView Monitor and Monitoring Blade functionality.

## Command Functionality

- **Daemon Management**: Manual start/stop control of the rtmd process
- **Service Initialization**: Starts the Real-Time Monitoring Daemon when needed
- **Backend Process Control**: Manages the core process supporting monitoring operations
- **Troubleshooting Support**: Provides manual control for diagnostic purposes

## Technical Implementation

Command options:
```bash
rtm rtmd                    # Manually start the rtmd daemon
rtmstart                   # Alternative command to start rtmd
rtmstop                    # Stop the Real-Time Monitoring daemon
cpwd_admin list            # Check rtmd process status (shows as "RTMD")
```

## Daemon Characteristics

- **Process Name**: rtmd (appears as "RTMD" in process lists)
- **Function**: Backend for SmartView Monitor and Monitoring Blade
- **Operation**: Collects and supplies real-time traffic statistics
- **Startup**: Typically starts automatically with monitoring subsystem

## Process Management

The rtmd daemon:
1. Runs as a background service supporting monitoring operations
2. Collects real-time traffic statistics continuously
3. Provides data to SmartView Monitor interfaces
4. Operates whether or not monitoring is actively being viewed

## Troubleshooting Considerations

- **High CPU Usage**: May indicate abnormal monitoring activity or performance issues
- **Manual Restart**: Useful for resolving daemon-related monitoring problems
- **Status Verification**: Use `cpwd_admin list` to confirm daemon operational status
- **Integration**: Critical component for all real-time monitoring functionality

## Service Dependencies

Works with:
- SmartView Monitor GUI interface
- Real-Time Monitoring kernel driver (`rtm drv`)
- Monitoring Blade components
- Traffic monitoring commands (`rtm monitor`)

## Connection Potential

Links to [[checkpoint-rtm-drv-kernel-driver-management]], [[checkpoint-rtm-monitor-traffic-analysis]], [[checkpoint-smartview-monitor-architecture]], [[checkpoint-cpwd-admin-process-monitoring-system]], [[checkpoint-monitoring-blade-integration]]

## Source Quality
- **Primary Source**: CheckPoint Process Management Documentation
- **Credibility Score**: 8/10
- **Validation Method**: Official documentation cross-reference and process verification