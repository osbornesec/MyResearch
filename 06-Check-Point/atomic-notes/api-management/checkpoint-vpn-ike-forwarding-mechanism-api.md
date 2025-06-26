---
state: permanent
type: atomic-note
created: 2025-06-19
last-reviewed: 2025-06-19
connections: 6
review-frequency: monthly
source-credibility: 9
domain: check-point
---

# Checkpoint VPN IKE Forwarding Mechanism API

## Core Concept
IKE forwarding mechanism API in Check Point Load Sharing clusters ensures entire IKE negotiations are performed against one cluster member using SEP_my_IKE_packet kernel table API, preventing negotiation fragmentation when VPN peer packets reach different cluster members.

## API Architecture Framework
- **IKE Packet Management APIs**: Cookie and Message ID tracking interfaces
- **Cluster Coordination APIs**: Member ownership assignment and forwarding
- **Negotiation State APIs**: Phase 1 and Phase 2 negotiation management
- **Synchronization APIs**: SA replication and cluster state management

## IKE Packet Tracking API
```json
{
  "ike_packet_tracking": {
    "endpoint": "/api/v1/cluster/ike-forwarding/packet-tracking",
    "description": "SEP_my_IKE_packet table management",
    "methods": ["GET", "POST", "PUT", "DELETE"],
    "key_format": "cookie_plus_message_id",
    "timeout": "120_seconds"
  },
  "cookie_management": {
    "endpoint": "/api/v1/cluster/ike-forwarding/cookie",
    "description": "Unique IKE cookie with Message ID management",
    "phase1_msgid": 0,
    "phase2_msgid": "unique_per_negotiation",
    "cluster_peer_assignment": "ip_address_based"
  }
}
```

## Inbound IKE Flow API
```json
{
  "inbound_ike_flow": {
    "steps": [
      {
        "step": 1,
        "api": "/api/v1/cluster/ike-forwarding/receive-packet",
        "description": "Cluster member receives IKE packet",
        "method": "POST"
      },
      {
        "step": 2,
        "api": "/api/v1/cluster/ike-forwarding/ha-ownership",
        "description": "High Availability mode ownership assignment",
        "method": "PUT",
        "condition": "ha_active_member"
      },
      {
        "step": 3,
        "api": "/api/v1/cluster/ike-forwarding/cookie-resolution",
        "description": "Load Sharing mode cookie and Message ID resolution",
        "method": "GET",
        "condition": "load_sharing_mode"
      },
      {
        "step": 4,
        "api": "/api/v1/cluster/ike-forwarding/table-search",
        "description": "SEP_my_IKE_packet table search for matching entry",
        "method": "GET",
        "search_key": "cookie_plus_msg_id"
      },
      {
        "step": 5,
        "api": "/api/v1/cluster/ike-forwarding/ownership-check",
        "description": "Check cluster peer managing IKE negotiation",
        "method": "GET",
        "response": "cluster_member_ip"
      },
      {
        "step": 6,
        "api": "/api/v1/cluster/ike-forwarding/local-handling",
        "description": "Handle locally if managing member",
        "method": "POST",
        "condition": "local_member_ownership"
      },
      {
        "step": 7,
        "api": "/api/v1/cluster/ike-forwarding/remote-forward",
        "description": "Forward packet to managing peer member",
        "method": "POST",
        "condition": "remote_member_ownership"
      },
      {
        "step": 8,
        "api": "/api/v1/cluster/ike-forwarding/take-ownership",
        "description": "Create table entry for new negotiation",
        "method": "POST",
        "condition": "no_existing_entry"
      }
    ]
  }
}
```

## Outbound IKE Flow API
```json
{
  "outbound_ike_flow": {
    "steps": [
      {
        "step": 1,
        "api": "/api/v1/cluster/ike-forwarding/initiate-negotiation",
        "description": "Cluster member initiates IKE negotiation",
        "method": "POST"
      },
      {
        "step": 2,
        "api": "/api/v1/cluster/ike-forwarding/table-verification",
        "description": "Verify no existing cookie + msg_id entry",
        "method": "GET",
        "validation": "no_existing_entry"
      },
      {
        "step": 3,
        "api": "/api/v1/cluster/ike-forwarding/entry-creation",
        "description": "Create new entry with local IP as cluster peer",
        "method": "POST",
        "assignment": "local_ip_address"
      }
    ]
  }
}
```

## Cluster Coordination API Features
- **3rd Party Clusters**: Sync interface IP API for unique addressing when cluster VIP matches member IP
- **Phase 2 Handling**: API for forwarding Phase 2 packets to Phase 1 managing member
- **SA Synchronization**: Inbound SA sync API with separate outbound SA creation for anti-replay protection

## API Security and Performance
```json
{
  "security_features": {
    "anti_replay_protection": "separate_outbound_sa_per_member",
    "negotiation_integrity": "complete_negotiation_single_member",
    "cluster_authentication": "secure_inter_member_communication"
  },
  "performance_optimization": {
    "forwarding_efficiency": "minimal_packet_processing_overhead",
    "table_lookup": "optimized_hash_table_search",
    "timeout_management": "120_second_entry_expiration"
  }
}
```

## Connection Potential
- [[checkpoint-vpn-kernel-tables-api]] - Kernel table management APIs
- [[checkpoint-cluster-load-balancing-api]] - Load balancing algorithms
- [[checkpoint-sa-synchronization-api]] - Security Association synchronization
- [[api-authentication-patterns-index]] - API authentication patterns
- [[api-response-status-code-pattern]] - Standard response codes
- [[checkpoint-network-failover-api]] - Network redundancy patterns

## Implementation Guidelines
**Cluster Requirement**: Only available in Load Sharing cluster configurations  
**State Management**: Maintains negotiation state across cluster members  
**Error Handling**: Comprehensive failover mechanisms for member failures  
**Performance**: Optimized for high-throughput VPN environments