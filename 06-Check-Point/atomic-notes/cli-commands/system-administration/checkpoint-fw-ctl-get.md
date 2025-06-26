---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint fw ctl get - Kernel Parameter Value Retrieval

## Core Concept

The `fw ctl get` command displays the current value of specified CheckPoint firewall kernel parameters, supporting both integer and string parameter types with optional all-modules search capability.

## Command Syntax

### Basic Syntax
```bash
fw ctl get int <parameter_name> [-a]
fw ctl get str <parameter_name> [-a]
```

### Platform-Specific Variations
- **Security Gateway/Cluster Member**: `fw ctl get`
- **Scalable Platform (Expert mode)**: `g_fw ctl get`
- **Available in**: Gaia Clish and Expert mode

## Parameters and Options

| Parameter | Type | Description |
|---|---|---|
| `int` | Type specifier | Retrieves integer kernel parameter values |
| `str` | Type specifier | Retrieves string kernel parameter values |
| `<parameter_name>` | Required | Name of the kernel parameter to query |
| `-a` | Optional flag | Searches across multiple kernel modules in order: $FWDIR/boot/modules/fw_*.o, then $PPKDIR/boot/modules/sim_*.o |

## Usage Examples

### Integer Parameter Retrieval
```bash
[Expert@MyGW:0]# fw ctl get int fw_kdprintf_limit -a
FW:
fw_kdprintf_limit = 100
PFAR 0: fw_kdprintf_limit = 10
[Expert@MyGW:0]#
```

### String Parameter Retrieval
```bash
[Expert@MyGW:0]# fw ctl get str fileapp_default_encoding_charset -a
FW:
fileapp_default_encoding_charset = 'UTF-8'
PFAR 0: Get failed.
[Expert@MyGW:0]#
```

### Simple Parameter Query
```bash
[Expert@MyGW:0]# fw ctl get int send_buf_limit
send_buf_limit = 80
[Expert@MyGW:0]#
```

## Important Considerations

### Cluster Environment Requirements
- **Mandatory**: All cluster members must be configured identically
- **VSX Gateway**: Kernel parameter values apply to all Virtual Systems and Virtual Routers
- **Scalable Platforms**: Must connect to applicable Security Group

### Limitations and Behaviors
- Some SecureXL kernel parameters cannot be retrieved on-the-fly with `fw ctl get` (reference: sk43387)
- Configuration may not support all kernel parameters, causing retrieval failures
- Parameter names are case-sensitive
- The `-a` flag enables comprehensive module searching when parameter location is uncertain

## Related Commands and Workflows

### Complementary Operations
- **Set parameter**: `fw ctl set int|str <parameter> <value>`
- **List all parameters**: Use `modinfo -p` with appropriate module paths
- **Permanent configuration**: Edit `$FWDIR/boot/modules/fwkern.conf` or `$PPKDIR/conf/simkern.conf`

### Systematic Parameter Discovery
```bash
# List all integer parameters
modinfo -p $FWDIR/boot/modules/fw_kern*.o | sort -u | grep ':int param' | awk 'BEGIN {FS=":"} ; {print $1}' | xargs -n 1 fw ctl get int

# List all string parameters  
modinfo -p $FWDIR/boot/modules/fw_kern*.o | sort -u | grep ':string param' | awk 'BEGIN {FS=":"} ; {print $1}' | xargs -n 1 fw ctl get str
```

## Source Quality
- **Primary Source**: CheckPoint Administration Foundation CLI Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from authoritative technical documentation

## Connection Potential
- Links to CheckPoint kernel parameter management system
- Connects with `fw ctl set` command for parameter modification
- Related to CheckPoint troubleshooting and performance optimization methodologies
- Integrates with SecureXL acceleration framework configuration
- Part of CheckPoint command-line interface comprehensive toolkit