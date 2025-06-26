---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-fwaccel-command-suite
validation-status: verified
command-family: advanced-features
---

# CheckPoint fwaccel templates - SecureXL Template Display

## Command Purpose
Displays contents of SecureXL's Accept Templates (enabled by default) and Drop Templates (disabled by default) that optimize traffic processing by pre-approving common connection patterns.

## Syntax Pattern
```bash
fwaccel templates [count|stats|limit=N]
fwaccel6 templates [count|stats|limit=N]
```

## Key Parameters
- `count`: Display template count summary to avoid memory overload
- `stats`: Show template statistics
- `limit=N`: Display only N entries (default 1000 rows)
- IPv4 and IPv6 variants available

## Advanced Context
Critical visibility tool for SecureXL template-based acceleration mechanism. Accept Templates are enabled by default and bypass full rule evaluation for matched traffic. Drop Templates require explicit activation through SmartConsole (Gateway object → Optimizations pane → Enable Drop optimization) followed by Access Control policy installation.

## Memory Management Considerations
- Each template entry consumes memory resources
- Default 1000-row limit prevents excessive resource usage
- Large rulebases require cautious monitoring with count/stats flags
- Use selective limits for focused troubleshooting

## Operational Applications
- Performance verification of rule acceleration effectiveness
- Troubleshooting identification of non-accelerated rules
- Template generation pattern analysis after policy changes
- Security validation of Drop Template configurations

## Connection Targets
- SecureXL template-based acceleration architecture
- Performance monitoring and optimization methodologies
- SmartConsole policy configuration procedures
- Memory resource management in high-throughput environments