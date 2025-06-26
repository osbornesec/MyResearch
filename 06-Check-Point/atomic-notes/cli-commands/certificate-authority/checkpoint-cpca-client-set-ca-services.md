---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI commands
validation-status: verified
---

# CheckPoint Certificate Authority Services Portal Control Command

## Core Concept

The `cpca_client set_ca_services` command enables or disables the Certificate Authority Services Portal on CheckPoint Management Servers, providing web-based access to download Internal Certificate Authority certificates on TCP port 18268.

## Command Syntax

```bash
cpca_client set_ca_services {on | off}
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `on` | Enables the Certificate Authority Services Portal |
| `off` | Disables the Certificate Authority Services Portal |

## Functional Description

- **Purpose**: Controls web-based certificate distribution portal
- **Port**: TCP 18268 for certificate downloads
- **Access Method**: HTTP web browser interface
- **Certificate Types**: Internal CA certificates for trust establishment
- **Use Cases**: Security Gateways, Site-to-Site VPN peers, Remote Access VPN clients, Clientless VPN clients

## Implementation Examples

### Security Management Server
```bash
# Enable portal
cpca_client set_ca_services on

# Access via browser
http://<SMS_IP>:18268

# Disable portal
cpca_client set_ca_services off
```

### Domain Management Server (Multi-Domain)
```bash
# Switch to domain context
mdsenv <Domain_IP_or_Name>

# Enable portal
cpca_client set_ca_services on

# Access via browser
http://<DMS_IP>:18268

# Disable portal
cpca_client set_ca_services off
```

## Technical Notes

- **R81.20 Specific**: TCP port 18264 reserved exclusively for CRL (Certificate Revocation List) retrieval
- **Context Requirement**: Multi-Domain deployments require `mdsenv` context switching
- **Security Consideration**: Portal should be disabled when certificate distribution is complete

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide (R81.20)
- **Credibility Score**: 9/10
- **Validation Method**: Official documentation verification

## Connection Potential

- Links to CheckPoint certificate management workflows
- Connects to VPN trust establishment procedures
- Related to Multi-Domain Server administration
- Associated with Internal Certificate Authority operations
- Relevant to Security Gateway certificate deployment