---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-performance-monitoring
validation-status: verified
---

# Check Point VSX mstat Memory Statistics Monitoring

## Core Concept
The `vsx mstat` command provides comprehensive memory resource monitoring for Check Point Virtual Systems (VSX) environments, displaying global memory statistics and per-Virtual System memory consumption to enable proactive resource management and troubleshooting.

## Primary Function
Monitors and displays memory usage statistics across VSX Gateway including:
- **Memory Total**: Total physical memory on VSX Gateway
- **Memory Free**: Available physical memory
- **Swap Total**: Total swap memory configured
- **Swap Free**: Available swap memory
- **Swap-in Rate**: Memory swaps per second measurement

## Command Capabilities
- Display memory consumption for specific Virtual System IDs
- Configure memory units for output display (MB, GB)
- Sort results by memory size for priority identification
- Enable debugging information for detailed analysis
- Control Memory Resource Control feature activation
- Configure swap-in sample rate timing (minutes)

## Performance Monitoring Value
Essential for VSX administrators to:
- Proactively track memory allocation across Virtual Systems
- Identify memory-constrained Virtual Systems requiring attention
- Troubleshoot performance issues related to memory pressure
- Plan capacity upgrades based on historical usage patterns
- Maintain optimal VSX Gateway performance through resource visibility

## Technical Integration
Complements `cpstat -f memory vsx` for detailed virtual device memory analysis, providing comprehensive memory monitoring framework for VSX environments.

## Connection Potential
- [[checkpoint-vsx-affinity-factory-reset]]
- [[checkpoint-cpview-performance-monitoring]]
- [[checkpoint-performance-investigation-baseline-establishment]]
- [[checkpoint-memory-utilization-optimization]]