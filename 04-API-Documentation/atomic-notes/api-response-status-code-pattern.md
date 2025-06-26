```yaml
---
state: permanent
type: atomic-note
created: 2025-06-16
last-reviewed: 2025-06-16
connections: 3
review-frequency: monthly
tags: [http-status-codes, api-response, error-handling, standardization, client-server-communication]
domain: api-documentation
---
```

# API Response Status Code Pattern

## Core Concept

HTTP status code patterns provide standardized communication between API servers and clients, enabling consistent error handling, success confirmation, and system state communication through universally understood numeric codes and semantic meaning.

## Content

### What are API Response Status Codes?

HTTP status codes are standardized 3-digit numeric responses that communicate:
- **Success States**: 2XX codes indicating successful request processing
- **Client Errors**: 4XX codes indicating client-side request problems
- **Server Errors**: 5XX codes indicating server-side processing failures
- **Redirection**: 3XX codes for resource location changes
- **Information**: 1XX codes for processing status updates

### Why is it Important?

1. **Standardized Communication**: Universal understanding across all HTTP-based systems
2. **Automated Error Handling**: Client applications can programmatically respond to different scenarios
3. **Debugging Acceleration**: Quick identification of failure categories and root causes
4. **System Monitoring**: Automated alerting and health monitoring based on status patterns
5. **API Documentation**: Clear contract definition between client and server expectations

### Implementation Patterns

**Success Response Patterns:**
- **200 OK**: Successful GET, PATCH, PUT operations with response body
- **201 Created**: Successful POST operations creating new resources
- **204 No Content**: Successful DELETE or update operations without response body
- **202 Accepted**: Asynchronous operation accepted for processing

**Client Error Patterns:**
- **400 Bad Request**: Invalid request format, missing required fields, validation failures
- **401 Unauthorized**: Missing, invalid, or expired authentication credentials
- **403 Forbidden**: Valid authentication but insufficient permissions for resource access
- **404 Not Found**: Requested resource does not exist or user lacks access
- **409 Conflict**: Resource state conflict (duplicate creation, concurrent modification)
- **429 Too Many Requests**: Rate limiting threshold exceeded

**Server Error Patterns:**
- **500 Internal Server Error**: Unexpected server-side processing failure
- **502 Bad Gateway**: Upstream service communication failure
- **503 Service Unavailable**: Temporary service overload or maintenance
- **504 Gateway Timeout**: Upstream service response timeout

### Zoom API Status Code Examples

**Standard Success Responses:**
```json
// 200 OK - Successful data retrieval
{
    "users": [...],
    "page_count": 1,
    "total_records": 25
}

// 201 Created - New meeting created
{
    "id": "123456789",
    "host_id": "user123",
    "topic": "Team Meeting"
}
```

**Error Response Format:**
```json
// 400 Bad Request - Validation failure
{
    "code": 300,
    "message": "Validation Failed.",
    "errors": [
        {
            "field": "user_info.email",
            "message": "Invalid field."
        }
    ]
}

// 429 Too Many Requests - Rate limit exceeded
{
    "code": 429,
    "message": "Request rate limit exceeded."
}
```

### Design Considerations

**Consistent Error Structure**: Standardized error response format with code, message, and field-specific errors
**Client-Friendly Messages**: Human-readable error descriptions for debugging and user feedback
**Rate Limiting Communication**: Clear indication of rate limit violations with recovery guidance
**Security Considerations**: Avoid exposing sensitive system information in error responses
**Monitoring Integration**: Status codes designed for automated monitoring and alerting systems

### How it Connects to Other Concepts

Status code patterns integrate with:
- HTTP error response patterns for detailed error communication
- API authentication systems for security-related status codes
- Rate limiting strategies for traffic management status codes
- API monitoring frameworks for system health assessment
- Client SDK design for automated error handling

## Connections

- [[http-error-response-patterns]] - Detailed error response structure and messaging patterns
- [[api-rate-limiting-strategy]] - Rate limiting implementation with 429 status code handling
- [[jwt-token-security-pattern]] - Authentication failures resulting in 401/403 status codes
- [[rest-api-design-principles]] - RESTful status code usage within architectural constraints
- [[webhook-event-subscription-pattern]] - Status codes for webhook endpoint validation and delivery

## Evolution Notes

- **2025-06-16**: Initial extraction from Zoom API error documentation and HTTP standards
- **Future**: Expand with GraphQL error patterns and modern API status code conventions

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