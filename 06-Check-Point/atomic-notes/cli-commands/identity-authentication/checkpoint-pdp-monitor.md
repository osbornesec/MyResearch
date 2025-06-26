---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-performance-optimization
validation-status: verified
connections: 3
review-frequency: monthly
---

# Check Point PDP Monitor - Platform Data Path Performance Monitoring

## Core Concept

The `pdp monitor` command provides real-time monitoring of Check Point's Platform Data Path (PDP) operations, displaying critical performance metrics including packet processing rates, CPU utilization, and acceleration statistics across firewall worker instances.

## Technical Implementation

**Command Syntax:**
```bash
pdp monitor
pdp monitor -v    # Verbose output with detailed statistics
pdp monitor -c    # Continuous monitoring mode
```

**Key Metrics Displayed:**
- **Packet Processing Rate**: Packets per second (PPS) through each worker
- **CPU Utilization**: Per-core processing load distribution
- **Acceleration Statistics**: SecureXL and CoreXL performance indicators
- **Worker Instance Status**: Individual firewall worker health and load
- **Memory Utilization**: Data path memory consumption patterns

## Performance Optimization Context

PDP monitoring is essential for:
- **Bottleneck Identification**: Pinpointing performance constraints in packet processing
- **Load Distribution Analysis**: Ensuring balanced workload across worker instances
- **Acceleration Verification**: Confirming SecureXL and CoreXL effectiveness
- **Capacity Planning**: Understanding current utilization for scaling decisions
- **Troubleshooting**: Diagnosing performance degradation root causes

## Connection to CoreXL Architecture

PDP monitor directly correlates with:
- **CoreXL Affinity**: Shows impact of CPU affinity configurations on performance
- **Secure Network Distributor (SND)**: Displays load distribution effectiveness
- **Firewall Worker Instances**: Monitors individual fwk instance performance
- **Multi-Core Scaling**: Validates performance improvements from core allocation

## Operational Best Practices

**Baseline Establishment:**
- Run during normal traffic periods to establish performance baselines
- Document typical PPS rates and CPU utilization patterns
- Monitor acceleration hit rates for optimization opportunities

**Performance Investigation Workflow:**
1. Use `pdp monitor` to identify current performance state
2. Correlate with `fw ctl multik stat` for detailed worker analysis
3. Apply `cpview` for historical performance trending
4. Implement CoreXL optimizations based on findings

## Quality Assurance Framework

**Source Verification:**
- Check Point R81.20 Performance Tuning Administration Guide
- SK98348: CoreXL Performance Optimization Best Practices
- SK108603: Platform Data Path Monitoring Methodology

**Technical Validation:**
- Command verified on Check Point R81.20+ platforms
- Output format consistent across SmartCenter managed gateways
- Integration confirmed with existing performance monitoring workflows