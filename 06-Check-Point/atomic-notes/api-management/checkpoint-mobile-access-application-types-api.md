---
state: permanent
type: atomic-note
created: 2025-06-19
last-reviewed: 2025-06-19
connections: 5
review-frequency: monthly
source-credibility: 10
domain: check-point
---

# Checkpoint Mobile Access Application Types API

## Core Concept
Mobile Access provides two distinct access modes through API interfaces: pure clientless access for web-based applications and thin client access for network-level applications, enabling granular application-specific access control.

## API Application Access Framework

### Clientless Access APIs
```json
{
  "clientless_applications": {
    "web_applications": {
      "endpoint": "/api/v1/mobile-access/clientless/web-apps",
      "technology": "Link Translation API",
      "methods": ["GET", "POST", "PUT", "DELETE"],
      "browser_requirement": "standard_web_browser_only"
    },
    "file_shares": {
      "endpoint": "/api/v1/mobile-access/clientless/file-shares",
      "protocol": "CIFS mount API",
      "methods": ["GET", "POST", "PUT"],
      "authentication": "integrated_windows_auth"
    },
    "webmail": {
      "endpoint": "/api/v1/mobile-access/clientless/webmail",
      "protocol": "IMAP API integration",
      "methods": ["GET", "POST"],
      "features": "email_calendar_contacts"
    }
  }
}
```

### Thin Client Access APIs
```json
{
  "thin_client_applications": {
    "snx_network_mode": {
      "endpoint": "/api/v1/mobile-access/thin-client/snx-network",
      "description": "Full TCP/UDP network access for administrative users",
      "protocols": ["TCP", "UDP"],
      "user_level": "administrative",
      "deployment": "automatic_on_demand"
    },
    "snx_application_mode": {
      "endpoint": "/api/v1/mobile-access/thin-client/snx-application",
      "description": "TCP-only access for non-administrative users",
      "protocols": ["TCP"],
      "user_level": "standard",
      "limitations": "tcp_only_restriction"
    },
    "embedded_applications": {
      "endpoint": "/api/v1/mobile-access/thin-client/embedded",
      "supported_protocols": ["Telnet", "SSH", "FTP", "RDP", "Jabber"],
      "integration": "native_protocol_support",
      "deployment": "automatic_thin_client"
    }
  }
}
```

## Access Control API Framework
```json
{
  "access_control": {
    "user_role_api": {
      "endpoint": "/api/v1/mobile-access/access-control/user-roles",
      "differentiation": "admin_vs_non_admin_levels",
      "methods": ["GET", "PUT"],
      "validation": "role_based_access_verification"
    },
    "protocol_support_api": {
      "endpoint": "/api/v1/mobile-access/access-control/protocols",
      "options": ["full_network_tcp_udp", "limited_tcp_only"],
      "assignment": "user_role_based",
      "enforcement": "gateway_level_filtering"
    },
    "application_integration_api": {
      "endpoint": "/api/v1/mobile-access/access-control/app-integration",
      "native_support": "common_business_applications",
      "configuration": "policy_driven_access"
    }
  }
}
```

## API Response Examples
```json
{
  "clientless_access_response": {
    "access_type": "clientless",
    "applications": [
      {
        "name": "web_application",
        "url": "https://internal.company.com/app",
        "translation_method": "url_translation",
        "browser_requirements": "javascript_enabled"
      }
    ],
    "session_management": "ssl_session_based"
  },
  "thin_client_response": {
    "access_type": "thin_client",
    "mode": "snx_network",
    "protocols_allowed": ["TCP", "UDP"],
    "deployment_status": "automatic_download_initiated",
    "user_privileges": "administrative"
  }
}
```

## Implementation Guidelines
- **Access Determination**: API-driven user role and application requirement analysis
- **Protocol Enforcement**: Gateway-level filtering based on user access levels
- **Application Integration**: Native protocol support for business-critical applications
- **Session Management**: Seamless transition between clientless and thin client modes

## Connection Potential
- [[checkpoint-mobile-access-authentication-api]] - Authentication integration
- [[checkpoint-ssl-vpn-clientless-architecture]] - Clientless architecture foundation
- [[api-authentication-patterns-index]] - Authentication pattern integration
- [[api-response-status-code-pattern]] - Standard API response patterns
- [[checkpoint-user-role-management-api]] - User role management integration

## API Security Considerations
**Protocol Filtering**: Strict enforcement of TCP/UDP restrictions based on user roles  
**Application Validation**: Verification of authorized applications before access grants  
**Session Monitoring**: Real-time tracking of clientless and thin client sessions  
**Access Auditing**: Comprehensive logging of application access and protocol usage