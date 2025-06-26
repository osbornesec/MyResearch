---
state: permanent
type: atomic-note
created: 2025-06-17
source: checkpoint-admin-foundation-cliguide-processed-2025-06-17.md
domain: check-point-administration
category: system-utilities
related-concepts: 
  - check-point-registry
  - product-configuration-management
  - system-diagnostics
---

# Check Point cpprod_util - Registry Configuration Utility

## Core Concept

The `cpprod_util` utility is Check Point's command-line tool for querying and modifying the Check Point Registry (`$CPDIR/registry/HKLM_registry.data`) without manually editing the registry file. It enables administrators to check which Check Point products and features are enabled or disabled on a system and modify their configuration status.

## Primary Functions

**Query Operations:**
- **CPPROD_GetValue**: Returns configuration status (0=Disabled, 1=Enabled) for specified products/features
- **CPPROD_GetInstalledProducts**: Lists all installed Check Point product packages
- **Registry Dump**: Creates complete registry dump file named "RegDump"

**Configuration Operations:**
- **CPPROD_SetValue**: Enables/disables Check Point products and features (Support/R&D guidance required)

## Platform-Specific Syntax

**Management Server / Security Gateway (Gaia Clish/Expert):**
```bash
cpprod_util CPPROD_GetValue "<Product>" "<Parameter>" {0|1}
cpprod_util CPPROD_SetValue "<Product>" "<Parameter>" {1|4} "<Value>" {0|1}
cpprod_util -dump
```

**Scalable Platform Security Group (Expert mode):**
```bash
g_all cpprod_util CPPROD_GetValue "<Product>" "<Parameter>" {0|1}
g_all cpprod_util CPPROD_SetValue "<Product>" "<Parameter>" {1|4} "<Value>" {0|1}
g_all cpprod_util -dump
```

## Common Product/Feature Identifiers

**Management Server Features:**
- `FwIsFirewallMgmt` - Management Server role
- `FwIsLogServer` - Dedicated Log Server
- `FwIsAtlasManagement` - SmartProvisioning blade
- `RtIsAnalyzerServer` - SmartEvent Server blade
- `RtIsAnalyzerCorrelationUnit` - SmartEvent Correlation Unit
- `UepmIsInstalled` - Endpoint Policy Management
- `FwIsPrimary` - HA Primary configuration
- `FwIsActiveManagement` - HA Active status

**Security Gateway Features:**
- `FwIsStandAlone` - Standalone configuration
- `FwIsVSX` - VSX Gateway mode
- `FwIsFloodGate` - QoS blade
- `FwIsAtlasModule` - SmartProvisioning module

## Critical Implementation Notes

**Multi-Domain Considerations:**
- Commands must be executed in the context of the relevant Domain Management Server
- Registry modifications affect domain-specific configurations

**Output Redirection Requirements:**
- Standard output redirection requires stderr forwarding: `cpprod_util <options> > <output_file> 2>&1`
- Utility outputs to stderr by default for status information

**Safety Protocols:**
- CPPROD_SetValue commands should only be executed under explicit Check Point Support or R&D guidance
- Registry modifications can affect critical system functionality
- Always verify current configuration before making changes

## Diagnostic Capabilities

**System Role Identification:**
- Quickly determine system role (Management/Gateway/Standalone)
- Identify enabled security blades and features
- Verify High Availability configuration status

**Troubleshooting Applications:**
- Validate product licensing and feature enablement
- Diagnose configuration inconsistencies
- Generate comprehensive registry dumps for support analysis

## Operational Context

This utility is essential for Check Point system administration, providing safe registry access without manual file editing. It's particularly valuable for automated configuration verification, system health checks, and troubleshooting scenarios where product/feature status confirmation is required.