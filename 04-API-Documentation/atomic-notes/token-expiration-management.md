```yaml
---
state: permanent
type: atomic-note
created: 2025-06-16
last-reviewed: 2025-06-16
connections: 4
review-frequency: monthly
tags: [token-lifecycle, authentication, oauth, security, session-management]
domain: api-documentation
---
```

# Token Expiration Management

## Core Concept

Token expiration management provides systematic approaches for handling authentication token lifecycles, enabling secure session management through time-based token invalidation, automatic refresh mechanisms, and graceful expiration handling in API client implementations.

## Content

### What is Token Expiration Management?

Token expiration management encompasses strategies for:
- **Lifecycle Control**: Time-based token invalidation for security enhancement
- **Refresh Mechanisms**: Automatic token renewal without user re-authentication
- **Expiration Detection**: Proactive identification of token expiration states
- **Graceful Degradation**: Seamless user experience during token transitions
- **Security Enforcement**: Preventing unauthorized access through expired tokens

### Why is it Important?

1. **Security Enhancement**: Limited token lifespan reduces exposure window for compromised tokens
2. **Session Management**: Controlled user session duration and automatic renewal
3. **User Experience**: Seamless authentication without repeated login prompts
4. **Attack Mitigation**: Reduced impact of token interception and replay attacks
5. **Compliance**: Meeting security standards requiring time-limited access tokens

### Implementation Patterns

**Token Lifecycle Stages:**
- **Generation**: Initial token creation with expiration timestamp
- **Active Use**: Normal API operations during valid period
- **Pre-Expiration**: Warning period for refresh opportunity
- **Expiration**: Token invalidation requiring renewal or re-authentication
- **Refresh**: New token generation using refresh token

**Expiration Timeframes:**
- **Short-lived Access Tokens**: 15 minutes to 1 hour for high-security operations
- **Medium-lived Sessions**: 1-24 hours for standard application usage
- **Long-lived Refresh Tokens**: 30-90 days for user convenience
- **Application-Specific**: Custom expiration based on security requirements

### Zoom API Token Management

**JWT Token Expiration:**
```javascript
// Short-lived JWT generation (recommended)
var payload = {
    iss: api_key,
    exp: ((new Date()).getTime() + 5000) // 5 seconds
};
var token = jwt.sign(payload, api_secret);
```

**OAuth Token Expiration:**
```json
// OAuth token response with expiration
{
    "access_token": "eyJhbGciOiJIUzI1NiJ9...",
    "token_type": "bearer",
    "expires_in": 3600,
    "scope": "user:read",
    "refresh_token": "def50200..."
}
```

**Token Refresh Implementation:**
```javascript
// Automatic token refresh before expiration
async function refreshToken() {
    const response = await fetch('https://zoom.us/oauth/token', {
        method: 'POST',
        headers: {
            'Authorization': 'Basic ' + btoa(clientId + ':' + clientSecret),
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: 'grant_type=refresh_token&refresh_token=' + refreshToken
    });
    return await response.json();
}
```

### Client Implementation Patterns

**Proactive Refresh Strategy:**
```javascript
// Check expiration before API calls
function isTokenExpiring(token, bufferMinutes = 5) {
    const expiryTime = token.exp * 1000; // Convert to milliseconds
    const bufferTime = bufferMinutes * 60 * 1000;
    return Date.now() > (expiryTime - bufferTime);
}

// Automatic refresh wrapper
async function apiCallWithTokenManagement(endpoint, options) {
    if (isTokenExpiring(currentToken)) {
        currentToken = await refreshToken();
    }
    return fetch(endpoint, {
        ...options,
        headers: {
            'Authorization': `Bearer ${currentToken.access_token}`,
            ...options.headers
        }
    });
}
```

**Error-Driven Refresh:**
```javascript
// Handle 401 responses with automatic retry
async function apiCall(endpoint, options) {
    let response = await fetch(endpoint, options);
    
    if (response.status === 401) {
        // Token expired, refresh and retry
        await refreshToken();
        response = await fetch(endpoint, {
            ...options,
            headers: {
                'Authorization': `Bearer ${newToken}`,
                ...options.headers
            }
        });
    }
    
    return response;
}
```

### Design Considerations

**Security vs Usability Balance**: Shorter tokens increase security but may impact user experience
**Refresh Token Security**: Secure storage and rotation of refresh tokens
**Network Reliability**: Handling refresh failures and connectivity issues
**Concurrent Request Management**: Preventing multiple simultaneous refresh attempts
**Token Storage**: Secure client-side token storage with appropriate encryption

### Error Handling Patterns

**Expired Token Response:**
```json
// 401 Unauthorized for expired token
{
    "code": 124,
    "message": "Invalid access token."
}
```

**Refresh Token Failure:**
```json
// 400 Bad Request for invalid refresh token
{
    "error": "invalid_grant",
    "error_description": "Invalid refresh token"
}
```

### How it Connects to Other Concepts

Token expiration management integrates with:
- JWT token security patterns for implementing expiration claims
- OAuth authorization flows for refresh token mechanisms
- API request header management for token transmission
- API response status codes for expiration error handling
- Security frameworks for token storage and protection

## Connections

- [[jwt-token-security-pattern]] - JWT expiration claim (exp) implementation and validation
- [[oauth-2-authorization-flow-pattern]] - Refresh token flows and OAuth token lifecycle
- [[api-request-header-management]] - Authorization header management with token rotation
- [[api-response-status-code-pattern]] - 401 Unauthorized responses for expired tokens
- [[rest-api-design-principles]] - Stateless authentication with time-limited tokens

## Evolution Notes

- **2025-06-16**: Initial extraction from Zoom API OAuth documentation and JWT patterns
- **Future**: Expand with modern token standards (PASETO) and zero-trust security models

## Review Schedule

- Next review: 2025-07-16
- Frequency: monthly

---

## Evergreen Processing Checklist

- [x] Title refined to function as "concept API"
- [x] Content is self-contained and atomic
- [x] At least 4 meaningful connections established
- [x] State updated to `permanent` when mature
- [x] Tags updated to reflect semantic relationships