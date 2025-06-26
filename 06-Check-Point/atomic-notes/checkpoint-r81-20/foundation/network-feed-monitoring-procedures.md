---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Monitoring - Network Feeds"
source-credibility: 9
management-domain: "monitoring"
integration-points: ["security-gateway", "expert-mode", "cluster-members", "network-feeds"]
---

# Network Feed Monitoring Procedures

## Core Management Concept
Network feed monitoring utilizes Expert mode commands on Security Gateways to track error messages, list IP addresses and domains for network feeds, and associate specific domains with IP addresses for comprehensive external network feed operational oversight.

## Administrative Context
This operational monitoring capability enables administrators to verify network feed functionality, troubleshoot connectivity issues, and validate dynamic object updates that support automated threat intelligence integration and external data source utilization.

## Implementation Details
- Monitor error and warning messages using grep commands on efo_error.elg logs
- List all policy-used network feed IP addresses with dynamic_objects -efo_show command
- Display specific network feed domains and IP ranges using dynamic_objects -efo commands
- Associate IP addresses with domains using domains_tool -ip for reverse lookup
- Retrieve IP addresses for specific domains using domains_tool -d for forward resolution
- Execute all commands in Expert mode on Security Gateways with cluster member coverage

## Integration Requirements
- Requires Expert mode access on Security Gateway systems
- Applies to all cluster members in clustered environments
- Integrates with network feed policy configurations for operational validation
- Foundation for external feed troubleshooting and dynamic object management workflows