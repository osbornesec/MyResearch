---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint Kernel Debug Command fw ctl kdebug

## Core Concept

The `fw ctl kdebug` command generates kernel debug messages from the CheckPoint Firewall kernel to a debug buffer, providing real-time kernel-level troubleshooting capabilities for traffic processing analysis.

## Command Syntax

**Basic Syntax:**
```bash
fw ctl kdebug <options>
```

**Gateway Mode:**
```bash
fw ctl kdebug -T -f -o /var/log/kernel_debug.txt
```

**VSX Mode (Virtual Systems):**
```bash
fw ctl kdebug -v ("<List of VSIDs>" | all) -k -T -f -o /var/log/kernel_debug.txt
```

**Scalable Platform:**
```bash
g_fw ctl kdebug -T -f -o /var/log/kernel_debug.txt
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-T` | Enables timestamp output in debug messages |
| `-f` | Enables real-time output (follow mode) |
| `-o <file>` | Specifies output file for debug messages |
| `-v <VSIDs>` | Specifies Virtual System IDs in VSX mode |
| `-k` | Enables kernel debug in VSX mode |
| `all` | Applies to all Virtual Systems in VSX |

## Usage Procedure

1. **Start kernel debug**: Execute kdebug command with appropriate parameters
2. **Replicate issue**: Perform actions that trigger the problem
3. **Stop debug**: Press CTRL+C to terminate collection
4. **Reset debug flags**: Run `fw ctl debug 0` to clear all debug settings

## Important Notes

- **Cluster Environment**: Must configure all cluster members identically
- **Scalable Platforms**: Must connect to applicable Security Group
- **Output Files**: Debug writes to `/var/log/kernel_debug.txt` or specified file
- **Performance Impact**: Kernel debug significantly impacts gateway performance
- **VSX Mode**: Requires specific VSID specification or "all" keyword

## Related Commands

- `fw ctl debug` - Alternative kernel debug command
- `fw ctl debug 0` - Resets all kernel debug flags
- `g_fw ctl kdebug` - Scalable platform variant

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide (R81.20)
- **Page Reference**: Section on fw ctl debug and kdebug commands
- **Credibility Score**: 9/10 (Official CheckPoint documentation)
- **Validation Method**: Direct extraction from official CLI guide

## Connection Potential

This command connects to:
- CheckPoint troubleshooting methodologies
- Network debugging procedures
- Kernel-level traffic analysis
- Performance investigation workflows
- VSX and cluster debugging practices
- SecureXL debugging integration