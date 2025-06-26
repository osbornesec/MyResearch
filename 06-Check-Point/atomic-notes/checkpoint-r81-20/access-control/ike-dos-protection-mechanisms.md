---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 IKE security protection
validation-status: verified
source: "Check Point R81.20 Site-to-Site VPN Administration Guide"
domain: "VPN Security"
---

# IKE Denial of Service Protection Mechanisms

## Core Concept
IKE DoS protection defends Security Gateways against denial-of-service attacks that exploit IKE protocol memory allocation requirements, preventing resource exhaustion from malicious IKE negotiation attempts with forged source addresses.

## Attack Vector Analysis
- **Memory Allocation Exploitation**: Attackers send multiple IKE Phase 1 packets requiring memory allocation
- **Source IP Forgery**: Each attack packet uses different forged source IP address
- **Resource Exhaustion**: Gateway allocates memory for each request, consuming available resources
- **Legitimate User Impact**: CPU and memory exhaustion prevents legitimate VPN connections

## Attack Source Categories
- **Identified Sources**: Attackers impersonating known legitimate gateways or partners
- **Unidentified Sources**: Attackers using unknown IP addresses resembling Remote Access clients
- **Dynamic Address Simulation**: Attackers mimicking gateways with dynamic IP addresses
- **Scale Amplification**: Large volume of simultaneous fake IKE negotiations

## Defense Mechanisms
- **Threshold Detection**: Monitors simultaneous IKE negotiation count against configurable thresholds
- **Load vs Attack Discrimination**: Distinguishes between legitimate load and malicious attacks
- **Source Filtering**: Filters probable DoS attack sources based on behavior patterns
- **Resource Protection**: Prevents complete resource exhaustion during attack scenarios

## SmartConsole Protection Settings
- **Threshold Configuration**: Configurable limits for simultaneous IKE negotiations
- **Protection Activation**: Automatic activation when thresholds exceeded
- **Source Identification**: Settings for distinguishing legitimate vs malicious sources
- **Advanced Tuning**: Detailed configuration options for specific environments

## IPv6 Limitations
- **IPv4 Only**: IKE DoS protection not supported for IPv6 addresses
- **Protocol Scope**: Protection mechanisms designed specifically for IPv4 IKE traffic
- **Migration Considerations**: Organizations using IPv6 need alternative protection strategies
- **Future Enhancement**: Potential for IPv6 support in future software releases

## Implementation Benefits
- **Service Availability**: Maintains VPN service availability during attack scenarios
- **Legitimate User Protection**: Ensures legitimate users can establish VPN connections
- **Automated Response**: No manual intervention required during attack mitigation
- **Performance Preservation**: Maintains gateway performance under attack conditions

## Configuration Integration
- **Global Properties**: IKE DoS protection configured through Global Properties settings
- **Policy Distribution**: Protection settings distributed to all managed Security Gateways
- **Monitoring Integration**: Attack detection and mitigation logged through standard monitoring
- **Threshold Tuning**: Settings adjustable based on legitimate usage patterns