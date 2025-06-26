```yaml
---
state: permanent
type: atomic-note
created: 2025-06-13
last-reviewed: 2025-06-13
connections: 1
review-frequency: monthly
tags: [http-errors, api-responses, error-handling, status-codes, validation]
domain: api-documentation
---
```

# HTTP Error Response Patterns

## Core Concept

Standardized HTTP error response patterns provide consistent, informative error communication through structured status codes, error messages, and validation details that enable effective client-side error handling and debugging.

## Content

### What are HTTP Error Response Patterns?

HTTP error responses follow structured patterns that include:
- **Status Codes**: Standardized HTTP response codes (4XX for client errors, 5XX for server errors)
- **Error Bodies**: JSON payloads with error codes and descriptive messages
- **Validation Details**: Field-specific error information for invalid requests
- **Consistency**: Uniform error format across all API endpoints

### Why is it Important?

1. **Developer Experience**: Clear error information accelerates debugging and integration
2. **Client Resilience**: Enables robust error handling and recovery strategies
3. **API Usability**: Reduces support burden through self-explanatory errors
4. **Debugging Efficiency**: Specific error codes and messages pinpoint issues quickly
5. **Standard Compliance**: Follows HTTP specification and REST conventions

### Implementation Patterns

**Standard Error Structure:**
```json
{
    "code": 300,
    "message": "Request Body should be a valid JSON object."
}
```

**Validation Error Structure:**
```json
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
```

**HTTP Status Code Mapping:**
- **400 Bad Request**: Invalid/missing data in request
- **401 Unauthorized**: Invalid/missing authentication credentials
- **404 Not Found**: Requested resource doesn't exist
- **409 Conflict**: Resource state conflict (e.g., duplicate email)
- **429 Too Many Requests**: Rate limit exceeded

### Strategic Design Principles

**Error Response Best Practices:**
- **Consistent Format**: Same error structure across all endpoints
- **Descriptive Messages**: Human-readable explanations of the issue
- **Actionable Information**: Clear guidance on how to resolve errors
- **Security Awareness**: Avoid exposing sensitive system information
- **Granular Validation**: Field-level error details for complex requests

### How it Connects to Other Concepts

Error handling patterns integrate with:
- API rate limiting for traffic management
- Authentication systems for access control
- REST API design for consistent interfaces
- Client SDK development for error recovery

## Connections

- [[API Rate Limiting Strategy]]
- [[REST API Design Principles]]
- [[Client SDK Error Handling]]
- [[API Documentation Standards]]

## Evolution Notes

- **2025-06-13**: Initial capture from Zoom API error handling documentation
- **Future**: Expand with error recovery strategies and retry mechanisms

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