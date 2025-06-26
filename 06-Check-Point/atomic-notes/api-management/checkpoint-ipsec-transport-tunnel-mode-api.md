---
state: permanent
type: atomic-note
created: 2025-06-19
last-reviewed: 2025-06-19
connections: 6
review-frequency: monthly
source-credibility: 10
domain: check-point
---

# Checkpoint IPSec Transport Tunnel Mode API

## Core Concept
IPSec API framework supports two distinct operational modes with different encapsulation approaches: Transport mode for host-to-host communication and Tunnel mode for network-to-network VPN connectivity, providing programmatic control over VPN encapsulation methods.

## API Mode Configuration Framework

### Transport Mode API
```json
{
  "transport_mode": {
    "endpoint": "/api/v1/vpn/ipsec/transport-mode",
    "description": "Host-to-host communication with Layer 4-7 protection",
    "methods": ["GET", "POST", "PUT", "DELETE"],
    "characteristics": {
      "layer_protection": "OSI_layers_4_to_7",
      "header_preservation": "original_ip_header_intact",
      "payload_encryption": "data_layer_only",
      "nat_limitations": "address_translation_restricted",
      "use_case": "peer_to_peer_connections"
    },
    "limitations": {
      "nat_support": false,
      "port_translation": false,
      "gateway_deployment": "not_suitable_for_perimeter"
    }
  }
}
```

### Tunnel Mode API
```json
{
  "tunnel_mode": {
    "endpoint": "/api/v1/vpn/ipsec/tunnel-mode",
    "description": "Network-to-network VPN with Layer 3-7 protection",
    "methods": ["GET", "POST", "PUT", "DELETE"],
    "characteristics": {
      "layer_protection": "OSI_layers_3_to_7",
      "full_encapsulation": "entire_packet_encrypted_authenticated",
      "network_connectivity": "network_to_network_host_to_network",
      "nat_support": "nat_traversal_nat_t_enabled",
      "checkpoint_implementation": "site_to_site_client_to_site"
    },
    "advantages": {
      "nat_traversal": true,
      "network_protection": "complete_segment_security",
      "routing_flexibility": "new_ip_header_routing"
    }
  }
}
```

## API Configuration Management
```json
{
  "mode_selection_api": {
    "endpoint": "/api/v1/vpn/ipsec/mode-selection",
    "methods": ["GET", "PUT"],
    "selection_criteria": {
      "deployment_type": ["site_to_site", "client_to_site", "peer_to_peer"],
      "nat_requirements": ["nat_t_required", "no_nat_support"],
      "protection_scope": ["host_only", "network_segment"],
      "gateway_type": ["perimeter_gateway", "internal_peer"]
    }
  },
  "encapsulation_api": {
    "endpoint": "/api/v1/vpn/ipsec/encapsulation",
    "transport_mode": {
      "header_processing": "preserve_original_ip",
      "encryption_scope": "payload_only",
      "routing": "original_addresses_maintained"
    },
    "tunnel_mode": {
      "header_processing": "new_ip_header_added",
      "encryption_scope": "complete_packet",
      "routing": "tunnel_endpoint_addressing"
    }
  }
}
```

## API Security Framework
```json
{
  "security_implementation": {
    "transport_mode_security": {
      "endpoint": "/api/v1/vpn/ipsec/transport-security",
      "protection_layers": ["layer_4", "layer_5", "layer_6", "layer_7"],
      "authentication": "endpoint_to_endpoint",
      "encryption": "payload_encryption_only"
    },
    "tunnel_mode_security": {
      "endpoint": "/api/v1/vpn/ipsec/tunnel-security",
      "protection_layers": ["layer_3", "layer_4", "layer_5", "layer_6", "layer_7"],
      "authentication": "network_to_network",
      "encryption": "complete_packet_encryption"
    }
  }
}
```

## API Use Case Configuration
```json
{
  "use_case_apis": {
    "transport_mode_cases": {
      "endpoint": "/api/v1/vpn/ipsec/transport-use-cases",
      "private_host_communication": {
        "description": "Direct host-to-host secure communication",
        "configuration": "peer_authentication_required"
      },
      "peer_connections": {
        "description": "VPN gateway to VPN gateway communication",
        "limitation": "not_suitable_for_perimeter_protection"
      }
    },
    "tunnel_mode_cases": {
      "endpoint": "/api/v1/vpn/ipsec/tunnel-use-cases",
      "site_to_site": {
        "description": "Router-to-router site linking",
        "configuration": "network_segment_protection"
      },
      "remote_access": {
        "description": "Remote user access to corporate network",
        "configuration": "client_to_site_deployment"
      },
      "network_extension": {
        "description": "Secure network segment extension",
        "configuration": "tunnel_mode_encapsulation"
      }
    }
  }
}
```

## Connection Potential
- [[checkpoint-vpn-kernel-tables-api]] - Kernel table integration for mode management
- [[checkpoint-vpn-ike-forwarding-mechanism-api]] - IKE negotiation for mode selection
- [[checkpoint-nat-traversal-api]] - NAT-T implementation for tunnel mode
- [[api-authentication-patterns-index]] - Authentication pattern integration
- [[api-response-status-code-pattern]] - Standard API response patterns
- [[checkpoint-site-to-site-vpn-api]] - Site-to-site VPN implementation

## Implementation Guidelines
**Mode Selection**: API-driven analysis of deployment requirements and constraints  
**Security Configuration**: Comprehensive protection level selection based on use case  
**NAT Compatibility**: Tunnel mode recommended for NAT environments  
**Performance Optimization**: Transport mode for direct peer communications when NAT not required