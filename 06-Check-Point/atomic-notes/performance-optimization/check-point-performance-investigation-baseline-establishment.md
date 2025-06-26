---
created: 2025-06-17T12:00:00Z
state: permanent
type: atomic-note
source: sk167553 - Performance Investigation Procedure
source-credibility: 9
research-context: Check Point Security Gateway Performance
validation-status: verified
connections: 3
---

# Check Point Performance Investigation Baseline Establishment

## Core Concept
Performance troubleshooting in Check Point Security Gateways must begin with establishing a clear understanding of expected behavior by creating an environmental baseline before identifying deviations and performance bottlenecks.

## Environment Sizing Framework
Essential factors for baseline establishment:
- **Hardware specifications** (5000, 16000 series appliances)
- **Policy and security blades** (NGTP, IPS, HTTPS Inspection)
- **Traffic blend characteristics** (DNS, IPSec, HTTPS, IPv4/IPv6)
- **Software version** (R80.10, R81.20, R82)
- **Kernel version** (2.6.18, 3.10)
- **Firewall implementation** (kernel/user space)
- **CoreXL configuration** (IPv4 and IPv6 instances)
- **Deployment topology** (Cluster, standalone)

## Expected Performance Determination
- **Appliance Sizing Tool**: Reference point for hardware, version, policy, and traffic blend capacity
- **Traffic history analysis**: cpview_history (1 month) and cpdiag (1 year) for throughput patterns
- **Expected packet handling flows**: Acceleration path mapping based on enabled blades

## Traffic Handling Path Mapping
- **Firewall Only + VPN**: Accelerated Path/SecureXL expected
- **APCL/URL Filtering**: PSLXL path handling
- **QoS**: QoS inbound/outbound processing
- **IPS**: Variable paths depending on profile (Basic/Optimized/Strict)
- **HTTPS Inspection**: CPASXL with process space load from wstlsd/pkxld daemons

## Connection Potential
Links to Check Point performance optimization methodologies, SecureXL acceleration principles, and capacity planning frameworks.