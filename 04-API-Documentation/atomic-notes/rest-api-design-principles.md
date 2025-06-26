```yaml
---
state: permanent
type: atomic-note
created: 2025-06-13
last-reviewed: 2025-06-13
connections: 1
review-frequency: monthly
tags: [rest-api, api-design, http-methods, resource-modeling, stateless-design]
domain: api-documentation
---
```

# REST API Design Principles

## Core Concept

RESTful API design principles establish architectural constraints that create scalable, maintainable, and intuitive web services through resource-based modeling, stateless interactions, and standard HTTP method semantics.

## Content

### What are REST API Design Principles?

REST (Representational State Transfer) defines architectural constraints:
- **Resource-Based URLs**: Endpoints represent resources, not actions
- **HTTP Method Semantics**: Standard verbs (GET, POST, PUT, PATCH, DELETE) for operations
- **Stateless Design**: Each request contains all necessary information
- **Standard Response Formats**: Consistent JSON structures and HTTP status codes
- **HATEOAS**: Hypermedia controls for API discoverability (optional)

### Why is it Important?

1. **Predictability**: Developers can intuitively understand API behavior
2. **Scalability**: Stateless design enables horizontal scaling
3. **Cachability**: GET requests can be cached for performance
4. **Flexibility**: Decoupled client-server architecture allows independent evolution
5. **Standard Compliance**: Leverages existing HTTP infrastructure and tooling

### Implementation Patterns

**Resource Modeling:**
- **Collections**: `/users` (GET for list, POST for create)
- **Individual Resources**: `/users/{userId}` (GET, PUT, PATCH, DELETE)
- **Nested Resources**: `/users/{userId}/meetings` (related resource access)
- **Actions on Resources**: `/meetings/{meetingId}/status` (state changes)

**HTTP Method Usage:**
- **GET**: Retrieve resources (safe, idempotent)
- **POST**: Create new resources or trigger actions
- **PUT**: Replace entire resource (idempotent)
- **PATCH**: Partial resource updates
- **DELETE**: Remove resources (idempotent)

**Zoom API REST Pattern Examples:**
```
GET /v2/users/{userId}              # Retrieve user
PATCH /v2/users/{userId}            # Update user
POST /v2/users/{userId}/meetings    # Create meeting for user
PUT /v2/meetings/{meetingId}/status # Update meeting status
```

### Design Considerations

**API Versioning**: `/v2/` prefix for backward compatibility
**Base URL Structure**: `https://api.zoom.us/v2/` for consistent endpoint access
**Authentication Integration**: Bearer tokens in Authorization headers
**Pagination**: `next_page_token` for large result sets
**Content Negotiation**: JSON as primary format with appropriate headers

### How it Connects to Other Concepts

REST principles work with:
- HTTP error response patterns for consistent error handling
- Authentication systems for secure resource access
- Rate limiting for traffic management
- API documentation for developer experience

## Connections

- [[HTTP Error Response Patterns]]
- [[OAuth 2.0 Authorization Flow Pattern]]
- [[API Rate Limiting Strategy]]
- [[API Documentation Standards]]
- [[../99-Archive/non-atomic-content/technical-specifications/MCP-Swarm-Coordination-Technical-Specification]] - REST principles in AI agent coordination (archived)
- [[AI-Enhanced SDLC Workflow Integration]] - API design in development workflows

## Evolution Notes

- **2025-06-13**: Initial capture from Zoom API design patterns
- **Future**: Expand with GraphQL comparisons and modern API trends

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