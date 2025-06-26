---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-firewall-cli-commands
validation-status: verified
---

# CheckPoint Firewall Chain Module Inspection Command

## Core Concept
The `fw ctl chain` command displays the list of Firewall Chain Modules that process traffic on a CheckPoint Security Gateway, showing the sequential inspection points through which packets pass during both inbound and outbound traffic processing.

## Command Syntax
```bash
fw [-d] ctl chain
```

## Parameters
- **-d**: Runs the command in debug mode for troubleshooting purposes
  - Best practice: Redirect output to file or use script command to save CLI session
  - Only use when troubleshooting the command itself

## Command Purpose
- Shows various inspection Chain Modules active on the Security Gateway
- Displays the sequential order of traffic processing modules
- Available Chain Modules depend on configuration and enabled Software Blades
- Critical for understanding traffic flow and inspection points

## Output Format
The command displays:
- **Position number**: Sequential order of chain modules
- **Memory address**: Hexadecimal memory location of the module
- **Module flags**: Various status flags
- **Module description**: Human-readable name and function
- **Module alias**: Internal reference name in parentheses

## Example Output
```
in chain (23):
    0: -7fffffff (000000000000000) (00000000) SecureXL inbound (sxl_in)
    1: -7ffffffe (0000000000000000) (00000000) SecureXL inbound CT (sxl_ct)
    2: -7f800000 (ffffffff8b6812b0) (fffffffff) IP Options Strip (in) (ipopt_strip)
    3: -7d000000 (ffffffff8a96ee80) (00000003) vpn multik forward in
    4: -2000000 (ffffffff8a97d830) (00000003) vpn decrypt (vpn)
```

## Critical Cluster Requirement
In CheckPoint Cluster deployments, the output of `fw ctl chain` must be identical across all Cluster Members to ensure consistent traffic processing and failover behavior.

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide - processed 2025-06-17
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential
- Links to CheckPoint Firewall architecture concepts
- Connects to traffic inspection and monitoring commands
- Relates to SecureXL acceleration and performance optimization
- Associates with VPN module configuration and troubleshooting
- Links to fw monitor command for traffic capture analysis