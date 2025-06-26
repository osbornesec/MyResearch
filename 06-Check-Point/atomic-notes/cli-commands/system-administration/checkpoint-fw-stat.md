---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-firewall-diagnostics
validation-status: verified
connections: 3
review-frequency: monthly
---

# checkpoint-fw-stat-connection-statistics-monitoring

## Core Concept

The `fw stat` command provides real-time connection statistics and memory utilization metrics for Check Point firewalls, essential for performance monitoring and troubleshooting connection-related issues.

## Technical Implementation

```bash
# Basic connection statistics
fw stat

# Continuous monitoring with refresh interval
fw stat -l

# Connection statistics with memory details
fw stat -p
```

## Key Metrics Provided

- **Connections**: Current active connection count
- **Peak Connections**: Maximum concurrent connections reached
- **Connection Rate**: New connections per second
- **Memory Usage**: Connection table memory utilization
- **CPU Impact**: Processing overhead per connection

## Diagnostic Applications

Essential for:
- Performance baseline establishment
- Connection capacity planning
- Memory exhaustion troubleshooting
- DOS attack detection
- Capacity threshold monitoring

## Connection Potential

Links to:
- [[checkpoint-connection-templates-acceleration]] - Connection processing optimization
- [[checkpoint-heavy-connection-detection-methodology]] - High-volume connection analysis
- [[checkpoint-performance-investigation-baseline-establishment]] - Performance monitoring framework