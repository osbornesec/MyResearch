---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-multidomain-enterprise-architecture
validation-status: verified
source: "Check Point R81.20 Multi-Domain Security Management Administration Guide"
---

# Active/Standby Domain Management Load Sharing Pattern

## Core Concept
Domain Management Server High Availability provides both redundancy and Load Sharing using Active/Standby configurations where one Domain Management Server is Active while others remain Standby with full synchronization.

## Active/Standby Architecture
- **Single Active Server**: Only one Domain Management Server active per domain at any time
- **Multiple Standby Servers**: One or more fully synchronized standby servers per domain
- **Manual Failover**: Manual promotion of standby server to active status upon failure
- **Read-Only Standby Access**: Standby servers accessible in read-only mode for configuration review

## Load Sharing Implementation
- **Cross-Server Distribution**: Active Domain Management Servers distributed across different Multi-Domain Servers
- **Geographic Load Balancing**: Active servers positioned for optimal geographic performance
- **Resource Optimization**: Different domains active on different physical servers
- **Administrative Efficiency**: Load sharing enables concurrent domain management across multiple servers

## Operational Characteristics
- **Management Isolation**: Only Active Domain Management Server permits policy and configuration changes
- **Full Synchronization**: Standby servers maintain complete synchronization with active server
- **Gateway Policy Access**: Security Gateways can retrieve policies from either active or standby servers
- **Certificate Management**: Certificate Revocation Lists available from active or standby servers

## Enterprise Benefits
- **Redundancy Assurance**: Complete backup for every domain with full configuration replication
- **Performance Distribution**: Load sharing across multiple physical Multi-Domain Servers
- **Administrative Flexibility**: Multiple concurrent domain management sessions across different servers
- **Business Continuity**: Rapid recovery through manual failover to synchronized standby servers

## Configuration Management
- **Primary Server Default**: Primary Domain Management Server automatically configured as Active
- **Standby Promotion**: Manual process to change standby server to active status
- **Multi-Server Support**: Each domain can have Domain Management Servers on multiple Multi-Domain Servers
- **Synchronization Automation**: Automatic synchronization maintains consistency across active and standby servers

## Connection Potential
- Links to Active/Active Multi-Domain Server redundancy
- Connects to Multi-Site High Availability deployment patterns
- Relates to geographic optimization strategies
- Associates with manual failover procedures