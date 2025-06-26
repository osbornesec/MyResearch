---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-administration
validation-status: verified
connections: 3
review-frequency: monthly
---

# Check Point CPView Real-Time Performance Monitoring Utility

## Core Concept
CPView is a text-based built-in utility on Check Point computers that provides real-time statistical monitoring of both general system information (CPU, Memory, Disk space) and Software Blade performance data on Security Gateways, ClusterXL, and Scalable Platform Security Groups.

## Key Characteristics
- **Real-time updates**: Continuously refreshes data at configurable intervals (default: 2 seconds)
- **Interactive interface**: Three-section layout with header, navigation, and statistics view
- **Performance focus**: Primary tool for monitoring gateway performance and resource utilization
- **Built-in utility**: No additional installation required on Check Point systems

## Interface Navigation
**Movement Controls:**
- Arrow keys: Navigate menus and scroll views
- Home: Return to Overview view
- Enter: Switch to View Mode or access sub-menus
- Esc: Return to Menu Mode
- Q: Quit CPView

**Display Options:**
- R: Change refresh rate
- W: Toggle wide/normal display modes
- S: Manually set rows/columns
- M: Toggle mouse on/off
- P: Pause/resume statistics collection
- Space: Immediate refresh
- C: Save current page to file (format: `cpview_<process_id>.cap<capture_number>`)
- H: Show help tooltip

## Primary Use Cases
- **Performance monitoring**: Track CPU, memory, and disk utilization
- **Software Blade analysis**: Monitor blade-specific performance metrics
- **Troubleshooting**: Identify resource bottlenecks and performance issues
- **Capacity planning**: Analyze resource consumption patterns over time

## Technical Implementation
- Text-based interface optimized for terminal environments
- Hierarchical menu system with drill-down capabilities
- Configurable refresh intervals for real-time monitoring
- File export capability for performance data capture

## Connection Potential
Links to existing concepts:
- [[checkpoint-performance-investigation-baseline-establishment]]
- [[checkpoint-corexl-performance-architecture-framework]]
- [[checkpoint-memory-utilization-optimization]]