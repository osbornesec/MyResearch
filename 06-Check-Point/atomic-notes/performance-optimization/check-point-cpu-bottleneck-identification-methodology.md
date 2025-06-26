---
created: 2025-06-17T12:02:00Z
state: permanent
type: atomic-note
source: sk167553 - Performance Investigation Procedure
source-credibility: 9
research-context: Check Point Security Gateway Performance
validation-status: verified
connections: 4
---

# Check Point CPU Bottleneck Identification Methodology

## Core Concept
Structured approach to identifying CPU bottlenecks in Check Point Security Gateways through analysis of SND (Secure Network Distributor) versus Firewall instance utilization patterns and task distribution.

## CPU Core Group Architecture

### Task Distribution by Version
**R80.10 and Earlier**:
- **SND Tasks**: Soft IRQ processing, Multi-Queue, SecureXL acceleration, templates matching
- **Firewall Tasks**: PXL path packets, F2F path processing, PSLXL/CPASXL paths

**R80.20 and Later**:
- **SND Tasks**: Soft IRQ, Multi-Queue, SecureXL packet handling, accelerated fragments
- **Firewall Tasks**: TPUT determination, template matching (new connections), non-accelerated processing

## Bottleneck Identification Protocol

### Firewall Instance Stress Patterns
**All Cores Stressed**:
1. **Traffic handling issues**: Low acceleration ratio, template efficiency problems
2. **Policy optimization**: Highest hit rate analysis, fragmentation handling
3. **Heavy connection detection**: Top connections/protocols analysis
4. **IPS/AV processing**: Blade-specific performance impact

**Some Cores Stressed**:
1. **Load imbalance**: Uneven distribution between instances
2. **Heavy connections**: Specific high-resource connections
3. **Template efficiency**: Rule base optimization requirements

### SND Core Stress Patterns
**All SNDs Stressed**:
1. **SecureXL drops**: Acceleration layer problems
2. **CPAQ failures**: Inter-component messaging issues
3. **Interface problems**: Hardware-level bottlenecks

**Some SNDs Stressed**:
1. **Traffic distribution**: Imbalanced load across cores
2. **Multi-Queue issues**: Interface queue configuration problems
3. **Heavy connections**: Resource-intensive flows

## Diagnostic Commands
- **CPU overview**: `cpview (CPU -> Overview)`
- **Top consumers**: `top + (shift + h)`
- **Process identification**: fwk#_# (Firewall), fw_worker_# (Kernel)

## Performance Impact Factors
- SecureXL acceleration ratios
- Template utilization efficiency
- Connection distribution patterns
- Hardware interface performance

## Connection Potential
Links to Check Point SecureXL optimization, CoreXL configuration best practices, and performance monitoring methodologies.