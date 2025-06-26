---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command investigation
validation-status: verified
---

# CheckPoint fw ctl zdebug - Debug Drop Analysis Command

## Core Concept
The `fw ctl zdebug + drop` command is a CheckPoint CLI debugging tool used to investigate software packet drops in real-time. It activates debugging output to help administrators identify and analyze the reasons behind packet drops in the firewall.

## Command Syntax
```bash
fw ctl zdebug + drop
```

## Research Context
This command is critical for troubleshooting performance issues when experiencing latency but CPU cores are not stressed. It's specifically recommended in the investigation flow for frame loss and software drops analysis.

## Primary Use Case
- **Debugging packet drops**: When CPUs are not stressed but latency issues persist
- **Performance troubleshooting**: Part of the systematic approach to identify software drop reasons
- **Real-time analysis**: Provides immediate feedback on drop events as they occur

## Performance Investigation Context
Used as part of the frame loss investigation workflow when:
1. Latency issues are observed
2. CPU utilization is not the bottleneck
3. Software drops are suspected as the root cause
4. Other drop statistics (SecureXL, cpview) show drop activity

## Related Commands
- `cpview (Network -> Traffic)` - View drop statistics
- `cpview (Advanced -> SecureXL -> Drops)` - SecureXL specific drops
- `fwaccel stats -d` - Acceleration drop statistics

## Source Quality
- **Primary Source**: sk167553 - Performance Investigation Procedure - How To
- **Credibility Score**: 9/10 (Official CheckPoint documentation)
- **Validation Method**: Direct extraction from official troubleshooting guide

## Connection Potential
Links to existing vault concepts:
- CheckPoint debugging methodologies
- Network performance troubleshooting procedures
- Packet drop analysis techniques
- CoreXL troubleshooting workflows
- SecureXL acceleration optimization