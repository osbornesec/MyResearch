---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: monitoring
source-lines: 1970-2035
---

# CheckPoint cpview - Performance Monitoring Interface

## Command Purpose
Text-based real-time performance monitoring utility providing statistical data for system health and Software Blade performance analysis.

## Syntax Pattern
```
cpview [--help]
```

## Interface Components
- **Header**: Timestamp showing when statistics were collected
- **Navigation**: Interactive menu bar with arrow key/mouse navigation
- **View**: Real-time statistics display with configurable refresh rate

## Key Navigation Controls
- **Arrow Keys**: Menu navigation and view scrolling
- **Enter**: Switch to View Mode or access sub-menus
- **Q**: Quit CPView
- **R**: Change refresh rate (default: 2 seconds)
- **P**: Pause/resume statistics collection
- **C**: Save current view to file

## Monitoring Scope
Displays general system information (CPU, Memory, Disk) and Software Blade-specific statistics on Security Gateways and Scalable Platform deployments.

## System Context
Primary tool for real-time performance monitoring and capacity planning. Essential for identifying performance bottlenecks and system health assessment.

## Connection Targets
- checkpoint-performance-optimization-framework
- checkpoint-capacity-planning-methodology
- checkpoint-system-health-monitoring