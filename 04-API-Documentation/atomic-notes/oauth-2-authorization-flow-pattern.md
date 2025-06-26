```yaml
---
state: permanent
type: atomic-note
created: 2025-06-13
last-reviewed: 2025-06-13
connections: 1
review-frequency: monthly
tags: [oauth, authorization, api-security, user-consent, authentication-flow]
domain: api-documentation
---
```

# OAuth 2.0 Authorization Flow Pattern

## Core Concept

OAuth 2.0 provides a standardized authorization framework that enables secure, user-consented access to protected resources without exposing user credentials to third-party applications.

## Content

### What is the OAuth 2.0 Authorization Flow?

OAuth 2.0 implements a multi-step authorization process:

1. **Authorization Request**: Application redirects user to authorization server
2. **User Consent**: User grants permission for specific scopes
3. **Authorization Code**: Server returns temporary authorization code
4. **Token Exchange**: Application exchanges code for access token
5. **Resource Access**: Use access token to make authenticated API requests

### Why is it Important?

1. **User Security**: Users never share credentials with third-party apps
2. **Granular Permissions**: Scope-based access control limits application privileges
3. **Revocable Access**: Users can revoke application access at any time
4. **Industry Standard**: Widely adopted pattern across major platforms
5. **Separation of Concerns**: Decouples authentication from authorization

### Implementation Patterns

**Authorization Flow Types:**
- **Authorization Code Flow**: For web applications with server-side components
- **Server-to-Server OAuth**: For backend services without user interaction
- **Implicit Flow**: For client-side applications (less secure, deprecated)

**Key Components:**
- **Client ID/Secret**: Application credentials for server identification
- **Redirect URI**: Callback URL for authorization code delivery
- **Scopes**: Specific permissions requested by application
- **Access Tokens**: Short-lived tokens for API access (typically 1 hour)
- **Refresh Tokens**: Long-lived tokens for obtaining new access tokens

### How it Connects to Other Concepts

OAuth 2.0 works in conjunction with:
- JWT tokens for stateless authentication
- API rate limiting for resource protection
- Webhook systems for real-time notifications
- REST API design patterns

## Connections

- [[JWT Token Security Pattern]]
- [[API Rate Limiting Strategy]]
- [[REST API Authentication Layers]]
- [[Webhook Event Subscription Pattern]]

## Evolution Notes

- **2025-06-13**: Initial capture from Zoom API authentication documentation
- **Future**: Expand with PKCE extension and security considerations

## Review Schedule

- Next review: 2025-07-13
- Frequency: monthly

---

## Evergreen Processing Checklist

- [x] Title refined to function as "concept API"
- [x] Content is self-contained and atomic
- [x] At least 2 meaningful connections established
- [x] State updated to `permanent` when mature
- [x] Tags updated to reflect semantic relationships