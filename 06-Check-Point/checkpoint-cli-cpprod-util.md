---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: "Check Point CLI command extraction from administrative foundation guide"
validation-status: verified
source: "Check Point CLI Reference Guide R81.20"
domain: "Product Configuration Management"
---

# Check Point CLI Command cpprod_util

## Core Concept

Registry management utility for Check Point that displays and modifies product and feature enablement status without manually accessing the Check Point Registry file.

## Registry Location

Works with Check Point Registry: `$CPDIR/registry/HKLM_registry.data`

## Syntax and Operations

**Get Value:**
```bash
cpprod_util CPPROD_GetValue "<Product>" "<Parameter>" {0|1}
```

**Set Value:**
```bash
cpprod_util CPPROD_SetValue "<Product>" "<Parameter>" {1|4} "<Value>" {0|1}
```

**Registry Dump:**
```bash
cpprod_util -dump
```

## Platform-Specific Execution

- **Management Server/Security Gateway/Cluster Member**: Gaia Clish or Expert mode
- **Scalable Platform Security Group**: Gaia gClish or Expert mode  
- **Scalable Platform (Expert mode)**: Prefix with `g_all`

## Key Parameters

- **CPPROD_GetValue**: Returns configuration status (0=Disabled, 1=Enabled)
- **CPPROD_SetValue**: Sets configuration (Support/R&D guidance required)
- **-dump**: Creates RegDump file in current directory

## Common Product Checks

- `FwIsFirewallMgmt`: Management Server status
- `FwIsStandAlone`: Standalone configuration
- `FwIsLogServer`: Dedicated Log Server
- `FwIsVSX`: VSX Gateway configuration
- `FwIsAtlasModule`: SmartProvisioning status

## Multi-Domain Server Context

Must run in relevant Domain Management Server context for MDS environments.

## Output Redirection

Requires stderr redirection: `cpprod_util <options> > <output file> 2>&1`

## Connection Potential

Links to:
- Check Point Registry management
- Product configuration verification
- Feature enablement procedures
- System administration diagnostics
- Multi-Domain Server operations
- High Availability configuration checks
- Software blade management