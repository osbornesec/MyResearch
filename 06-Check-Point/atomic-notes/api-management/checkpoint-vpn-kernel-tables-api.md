---
state: permanent
type: atomic-note
created: 2025-06-19
last-reviewed: 2025-06-19
connections: 7
review-frequency: monthly
source-credibility: 9
domain: check-point
---

# Checkpoint VPN Kernel Tables API

## Core Concept
Kernel tables (State tables) serve as the memory of Check Point Stateful Inspection Virtual Machine, implemented as dynamic hash tables in kernel memory with API interfaces for state management, VPN operations, and monitoring.

## API Architecture Framework
- **Table Query APIs**: Programmatic access to kernel table contents
- **State Management APIs**: Connection state and SA data manipulation
- **Monitoring APIs**: Real-time table statistics and health monitoring
- **Synchronization APIs**: Cluster coordination and state replication

## Core VPN Table APIs

### Connection and SA Management
```json
{
  "connections_table": {
    "endpoint": "/api/v1/kernel-tables/connections",
    "description": "Main table holding all active connection data",
    "methods": ["GET", "POST"],
    "timeout": "variable based on connection type"
  },
  "ike_sa_table": {
    "endpoint": "/api/v1/kernel-tables/ike-sa",
    "description": "ISAKMP SA information for Quick Mode negotiation",
    "methods": ["GET", "PUT", "DELETE"],
    "synchronization": "cluster_synchronized"
  },
  "inbound_spi": {
    "endpoint": "/api/v1/kernel-tables/inbound-spi",
    "description": "All inbound IPSec SAs with 3600 second expiration",
    "methods": ["GET", "POST", "DELETE"],
    "timeout": "3600_seconds"
  },
  "outbound_spi": {
    "endpoint": "/api/v1/kernel-tables/outbound-spi",
    "description": "All outbound IPSec SAs with peer and SPI indexing",
    "methods": ["GET", "POST", "DELETE"],
    "synchronization": "cluster_synchronized"
  }
}
```

### Cluster Coordination APIs
```json
{
  "sep_my_ike_packet": {
    "endpoint": "/api/v1/kernel-tables/sep-ike-packet",
    "description": "IKE forwarding for Load Sharing clusters",
    "methods": ["GET", "POST"],
    "timeout": "120_seconds",
    "cluster_specific": true
  },
  "mspi_cluster_map": {
    "endpoint": "/api/v1/kernel-tables/mspi-cluster-map",
    "description": "Maps MSPI between cluster peer members",
    "methods": ["GET", "PUT"],
    "synchronization": "cluster_coordinated"
  },
  "mspi_cluster_update": {
    "endpoint": "/api/v1/kernel-tables/mspi-cluster-update",
    "description": "Synchronizes MSPI numbers between cluster members",
    "methods": ["GET", "POST"],
    "timeout": "600_seconds"
  }
}
```

## API Query Operations
- **TABLE API**: Name or ID-based kernel table access
- **Summary APIs**: Current and peak connection count statistics
- **Formatted APIs**: Table contents with optional IP resolution
- **Unlimited APIs**: Complete table content retrieval
- **Limited APIs**: Configurable maximum entry output

## API Response Format
```json
{
  "table_name": "connections",
  "table_id": 1,
  "entry_format": "hexadecimal_fields",
  "timeout_values": "end_of_entry_when_applicable",
  "state_information": {
    "connection_states": "active_connections",
    "sa_data": "security_associations",
    "peer_relationships": "gateway_peers",
    "authentication_details": "auth_state"
  }
}
```

## Synchronization API Behavior
- **Synchronized Tables**: IKE_SA_table, inbound_SPI, outbound_SPI, MSPI_cluster_update
- **Non-Synchronized Tables**: crypt_resolver_db, encryption_requests, SEP_my_IKE_packet
- **Cluster-Specific**: Cluster member identification for coordination operations

## API Security and Access Control
- **Administrative Access**: Full table manipulation requires admin privileges
- **Read-Only Access**: Monitoring operations available to restricted users
- **Cluster Authentication**: Inter-cluster communication requires secure channels
- **Audit Logging**: All table modifications logged for security compliance

## Connection Potential
- [[checkpoint-vpn-ike-forwarding-mechanism-api]] - IKE forwarding API details
- [[checkpoint-stateful-inspection-api]] - Stateful inspection integration
- [[checkpoint-cluster-synchronization-api]] - Cluster coordination APIs
- [[api-rate-limiting-strategy]] - API rate limiting for kernel operations
- [[api-authentication-patterns-index]] - Authentication for kernel access
- [[checkpoint-performance-monitoring-api-integration]] - Performance monitoring integration
- [[api-response-status-code-pattern]] - Standard response patterns

## Implementation Guidelines
**Access Level**: Kernel-level operations require elevated privileges  
**Response Format**: JSON with hexadecimal field representation  
**Error Handling**: Detailed error codes for table operation failures  
**Performance**: Optimized for high-frequency monitoring operations