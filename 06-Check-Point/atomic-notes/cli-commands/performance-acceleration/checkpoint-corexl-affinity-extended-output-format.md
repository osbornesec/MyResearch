---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-corexl-processing
validation-status: verified
source: "Check Point ATRG CoreXL sk98737"
---

# Check Point CoreXL Affinity Extended Output Format

## Core Concept
The `-x` flag in `fw ctl affinity -l` provides extended output format with granular filtering capabilities for comprehensive CoreXL affinity analysis across VSID ranges, CPU ranges, and process types.

## Technical Implementation
- **Extended Format**: `-x` flag enables detailed affinity information display
- **VSID Filtering**: `-vsid VSID_ranges` limits output to specific Virtual System contexts
- **CPU Filtering**: `-cpu CPU_ID_ranges` focuses on particular CPU core ranges
- **Process Flags**: `-flags e|k|t|n|h|o` controls output detail and format
  - `e`: exclude exception processes
  - `k`: exclude kernel threads
  - `t`: include all process threads
  - `n`: show process names instead of command lines
  - `h`: display CPU mask in hexadecimal format
  - `o`: output to `/tmp/affinity_list_output` file (VSX R77.10+)

## Research Context
Advanced diagnostic capability for CoreXL performance analysis, enabling detailed examination of CPU affinity assignments across complex multi-core firewall deployments.

## Source Quality
- **Primary Source**: Check Point ATRG CoreXL Technical Reference sk98737
- **Credibility Score**: 9/10
- **Validation Method**: Direct extraction from Check Point technical documentation

## Connection Potential
- Links to system diagnostic methodologies
- Connects with performance analysis tools
- Relates to multi-core troubleshooting techniques
- Associates with firewall optimization workflows