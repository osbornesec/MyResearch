---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 21915-22298
---

# CheckPoint fw ctl get/set - Kernel Parameters

## Command Purpose
Shows and configures kernel parameters that control advanced Security Gateway behavior. Get shows current values, set configures new values for integer and string parameters.

## Syntax Pattern
```bash
fw [-d] ctl get {int|str} <parameter_name> [-a]
fw [-d] ctl set [-f] {int|str} <parameter_name> <value>
```

## Key Parameters
- `get int/str`: Retrieve integer or string kernel parameter value
- `set int/str`: Configure integer or string kernel parameter value
- `-a`: Search in both $FWDIR/boot/modules/fw_*.o and $PPKDIR/boot/modules/sim_*.o
- `-f`: Force setting (with set command)
- `-t`: Make configuration permanent (survives reboot)

## Security Context
Advanced configuration tool for Security Gateway kernel behavior modification. Settings without -t flag don't survive reboot. Must configure all Cluster Members identically. Critical for performance tuning and troubleshooting.

## Connection Targets
- checkpoint-kernel-parameter-configuration-files
- checkpoint-cluster-configuration-synchronization
- checkpoint-vsx-kernel-parameter-inheritance
- checkpoint-performance-tuning-methodology