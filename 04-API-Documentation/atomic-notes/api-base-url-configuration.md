```yaml
---
state: permanent
type: atomic-note
created: 2025-06-16
last-reviewed: 2025-06-16
connections: 3
review-frequency: monthly
tags: [api-configuration, url-structure, environment-management, versioning, client-configuration]
domain: api-documentation
---
```

# API Base URL Configuration

## Core Concept

API base URL configuration provides systematic approaches for managing API endpoint addresses across different environments, versions, and deployment contexts, enabling consistent client configuration and seamless environment transitions.

## Content

### What is API Base URL Configuration?

API base URL configuration involves systematic management of:
- **Environment-Specific URLs**: Different base URLs for development, staging, production
- **Version Management**: URL patterns that incorporate API version information
- **Service Discovery**: Dynamic base URL resolution and service location
- **Regional Configuration**: Geographic or regional API endpoint selection
- **Protocol Management**: HTTPS enforcement and secure connection requirements

### Why is it Important?

1. **Environment Management**: Seamless transitions between development, testing, and production
2. **Version Control**: Clear API version communication through URL structure
3. **Service Reliability**: Proper endpoint configuration prevents connection failures
4. **Security Enforcement**: HTTPS protocol usage and secure endpoint configuration
5. **Performance Optimization**: Regional endpoint selection for latency reduction

### Implementation Patterns

**Version-Aware Base URLs:**
- **Path Versioning**: `https://api.example.com/v2/` for version in URL path
- **Subdomain Versioning**: `https://v2.api.example.com/` for version in subdomain
- **Header Versioning**: Base URL remains constant, version in Accept header
- **Parameter Versioning**: `https://api.example.com/?version=2` for version as parameter

**Environment-Based Configuration:**
- **Development**: `https://dev-api.example.com/v2/`
- **Staging**: `https://staging-api.example.com/v2/`
- **Production**: `https://api.example.com/v2/`
- **Regional**: `https://us-api.example.com/v2/`, `https://eu-api.example.com/v2/`

### Zoom API Base URL Examples

**Standard Base URL Structure:**
```javascript
const ZOOM_API_BASE_URL = 'https://api.zoom.us/v2/';

// Complete endpoint construction
const endpoint = ZOOM_API_BASE_URL + 'users/me';
// Results in: https://api.zoom.us/v2/users/me
```

**Environment Configuration:**
```javascript
const API_CONFIG = {
    development: {
        baseURL: 'https://api.zoom.us/v2/',
        timeout: 30000
    },
    production: {
        baseURL: 'https://api.zoom.us/v2/',
        timeout: 10000
    }
};

const config = API_CONFIG[process.env.NODE_ENV] || API_CONFIG.development;
```

**Client Configuration Patterns:**
```javascript
class ZoomAPIClient {
    constructor(options = {}) {
        this.baseURL = options.baseURL || 'https://api.zoom.us/v2/';
        this.accessToken = options.accessToken;
        this.timeout = options.timeout || 10000;
    }
    
    async request(endpoint, options = {}) {
        const url = this.baseURL + endpoint.replace(/^\//, '');
        return fetch(url, {
            timeout: this.timeout,
            headers: {
                'Authorization': `Bearer ${this.accessToken}`,
                'Content-Type': 'application/json',
                ...options.headers
            },
            ...options
        });
    }
}
```

### Configuration Management Patterns

**Environment Variables:**
```bash
# Environment-specific configuration
ZOOM_API_BASE_URL=https://api.zoom.us/v2/
ZOOM_API_TIMEOUT=10000
ZOOM_API_RETRY_ATTEMPTS=3
```

**Configuration Objects:**
```javascript
const apiConfig = {
    baseURL: process.env.ZOOM_API_BASE_URL,
    timeout: parseInt(process.env.ZOOM_API_TIMEOUT),
    retries: parseInt(process.env.ZOOM_API_RETRY_ATTEMPTS),
    headers: {
        'User-Agent': 'MyApp/1.0',
        'Accept': 'application/json'
    }
};
```

**Dynamic URL Resolution:**
```javascript
// Service discovery pattern
async function getAPIBaseURL(region = 'us') {
    const serviceRegistry = await fetch('/api/registry');
    const services = await serviceRegistry.json();
    return services.zoom.regions[region].baseURL;
}
```

### Design Considerations

**Protocol Security**: Always use HTTPS for production API endpoints
**URL Validation**: Validate base URL format and reachability during client initialization
**Trailing Slash Handling**: Consistent handling of trailing slashes in base URLs
**Path Resolution**: Proper concatenation of base URL with endpoint paths
**Configuration Validation**: Runtime validation of base URL configuration

### Error Handling Patterns

**Invalid Base URL:**
```javascript
// Validation during client initialization
function validateBaseURL(url) {
    try {
        const parsed = new URL(url);
        if (parsed.protocol !== 'https:') {
            throw new Error('Base URL must use HTTPS protocol');
        }
        return true;
    } catch (error) {
        throw new Error(`Invalid base URL: ${error.message}`);
    }
}
```

**Connection Failures:**
```javascript
// Retry logic for connection issues
async function requestWithRetry(url, options, maxRetries = 3) {
    for (let attempt = 1; attempt <= maxRetries; attempt++) {
        try {
            return await fetch(url, options);
        } catch (error) {
            if (attempt === maxRetries) throw error;
            await new Promise(resolve => setTimeout(resolve, 1000 * attempt));
        }
    }
}
```

### How it Connects to Other Concepts

Base URL configuration integrates with:
- REST API design principles for consistent URL structure
- API request header management for complete request configuration
- Token expiration management for endpoint-specific authentication
- Environment management for deployment-specific configuration
- API versioning strategies for backward compatibility

## Connections

- [[rest-api-design-principles]] - RESTful URL structure and resource-based endpoint design
- [[api-request-header-management]] - Complete request configuration including base URL and headers
- [[token-expiration-management]] - Environment-specific token management and endpoint authentication
- [[api-response-status-code-pattern]] - Status codes for URL configuration errors (404, 502, 503)
- [[oauth-2-authorization-flow-pattern]] - OAuth endpoint configuration and authorization URLs

## Evolution Notes

- **2025-06-16**: Initial extraction from Zoom API structure and client configuration patterns
- **Future**: Expand with service mesh configuration and modern API gateway patterns

## Review Schedule

- Next review: 2025-07-16
- Frequency: monthly

---

## Evergreen Processing Checklist

- [x] Title refined to function as "concept API"
- [x] Content is self-contained and atomic
- [x] At least 3 meaningful connections established
- [x] State updated to `permanent` when mature
- [x] Tags updated to reflect semantic relationships