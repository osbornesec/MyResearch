---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-performance
source-credibility: 9
validation-status: verified
---

# Check Point Performance Investigation Systematic Methodology

## Core Concept

Comprehensive performance investigation framework following structured approach: Environment Baseline → Basic Health Check → Investigation Flows → Detailed Analysis, providing systematic troubleshooting for latency, packet loss, and performance bottlenecks.

## Four-Phase Investigation Framework

### Phase 1: Setup & Environment Check
- **Sizing Assessment**: Hardware model, security blades, traffic blend, version configuration
- **Expected Throughput**: Appliance Sizing Tool validation for baseline performance
- **Traffic Change Analysis**: cpview_history (1 month) and cpdiag (1 year) historical data
- **Packet Handling Flow Expectations**: Policy and blade-specific processing paths

### Phase 2: Basic Health Check
- **Network Health**: Frame loss testing via ping, interface stability monitoring
- **System Stability**: Cluster status, hardware sensors, memory/connection status
- **Interface Analysis**: netstat RX-DRP monitoring (<0.1% threshold), carrier error detection
- **Sync Network Health**: cphaprob syncstat with <1% packet loss threshold

### Phase 3: Investigation Flow Selection

#### Latency Investigation Paths
1. **System Stressed All Over**: Identify bottleneck (SND vs Firewall instances)
2. **System Stressed for Specific Patterns**: Zone-specific or connection-specific analysis
3. **No Core Stressed**: Focus on drops analysis

#### CPU Utilization Analysis
- **All Cores Stressed**: Top process identification, acceleration ratio analysis
- **Some Cores Stressed**: Load distribution imbalance, Multi-Queue investigation
- **SND vs Firewall Instance Distribution**: Different troubleshooting approaches per component

### Phase 4: Detailed Analysis Components

#### CPU Task Distribution (R80.20+ vs R80.10-)
- **Soft IRQ Processing**: SND responsibility across versions
- **TPUT Acceleration**: Moved from SND to Firewall in R80.20+
- **Template Matching**: Connection offload responsibility changes
- **Fragmentation Handling**: Virtual reassembly location varies by version

## Health Check KPIs

### Network Health Thresholds
- **RX-DRP**: <0.1% (indicates SND overload or Multi-Queue need)
- **RX-ERR/RX-OVR**: Near zero, not actively incrementing
- **Sync Network**: <1% packet loss/retransmission
- **Carrier Errors**: Zero tolerance for interface stability

### System Health Indicators
- **Cluster Stability**: cphaprob state monitoring
- **Hardware Health**: cpstat -f sensors temperature/voltage monitoring
- **Memory Status**: fw ctl pstat for connection and fragment analysis

## Traffic Flow Expectations by Blade

### Processing Path Matrix
- **Firewall Only & VPN**: Accelerated Path/SecureXL
- **APCL/URL Filtering**: PSLXL processing
- **QoS**: Inbound/outbound QoS processing
- **IPS**: Basic/Optimized/Strict profile variations
- **Threat Prevention**: PSLXL, CPASXL processing
- **Mobile Access VPN**: F2F (Firewall-to-Firewall) processing
- **HTTPS Inspection**: CPASXL + wstlsd/pkxld daemon load

## Research Context

Systematic performance investigation methodology from sk167553 (Performance Investigation Procedure - How To). Provides structured approach to Check Point performance troubleshooting.

## Connection Potential

Links to SecureXL troubleshooting procedures, CoreXL optimization methodologies, and network performance monitoring frameworks across the vault.