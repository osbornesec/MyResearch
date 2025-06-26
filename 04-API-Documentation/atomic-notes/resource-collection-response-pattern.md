```yaml
---
state: permanent
type: atomic-note
created: 2025-06-16
last-reviewed: 2025-06-16
connections: 4
review-frequency: monthly
tags: [resource-collections, pagination, response-structure, data-organization, api-design]
domain: api-documentation
---
```

# Resource Collection Response Pattern

## Core Concept

Resource collection response patterns provide systematic approaches for structuring API responses that return multiple resources, including pagination metadata, collection information, and consistent data organization that enables efficient client-side processing and navigation.

## Content

### What is Resource Collection Response Pattern?

Resource collection response patterns define standardized structures for:
- **Collection Metadata**: Total counts, page information, and navigation details
- **Resource Arrays**: Consistent organization of individual resource items
- **Pagination Controls**: Next/previous page tokens and size information
- **Filtering Context**: Applied filters and search criteria information
- **Embedded Resources**: Related data inclusion and expansion options

### Why is it Important?

1. **Predictable Structure**: Clients can reliably parse and process collection responses
2. **Efficient Navigation**: Clear pagination controls enable seamless data traversal
3. **Performance Optimization**: Controlled page sizes prevent overwhelming responses
4. **User Experience**: Rich metadata supports sophisticated UI components
5. **API Consistency**: Standardized collection format across all endpoints

### Implementation Patterns

**Standard Collection Structure:**
- **Data Array**: `items`, `users`, `meetings` containing resource objects
- **Metadata Object**: `pagination`, `meta`, `_links` with collection information
- **Count Information**: `total_count`, `page_count`, `current_page` for navigation
- **Navigation Tokens**: `next_page_token`, `previous_page_token` for traversal
- **Applied Filters**: `filters`, `query`, `applied_criteria` for context

**Pagination Strategies:**
- **Offset-Based**: `page_number` and `page_size` for traditional pagination
- **Cursor-Based**: `next_page_token` for efficient large dataset traversal
- **Hybrid Approach**: Combined offset and cursor for flexible navigation
- **Infinite Scroll**: Continuous loading pattern with cursor-based pagination

### Zoom API Collection Examples

**User Collection Response:**
```json
{
    "page_count": 1,
    "page_number": 1,
    "page_size": 30,
    "total_records": 25,
    "users": [
        {
            "id": "user123",
            "first_name": "John",
            "last_name": "Doe",
            "email": "john.doe@example.com",
            "type": 1,
            "timezone": "America/New_York",
            "created_at": "2023-01-15T08:30:00Z",
            "last_login_time": "2023-06-15T14:22:00Z"
        }
    ]
}
```

**Meeting Collection with Pagination:**
```json
{
    "meetings": [
        {
            "uuid": "meeting123",
            "id": "987654321",
            "host_id": "user123",
            "topic": "Weekly Team Meeting",
            "type": 2,
            "start_time": "2023-06-20T15:00:00Z",
            "duration": 60,
            "timezone": "America/New_York"
        }
    ],
    "page_count": 5,
    "page_number": 1,
    "page_size": 30,
    "total_records": 142,
    "next_page_token": "eyJhbGciOiJIUzI1NiJ9..."
}
```

### Response Structure Patterns

**Minimal Collection Pattern:**
```json
{
    "data": [...],
    "total": 150,
    "page": 1,
    "per_page": 25
}
```

**Rich Metadata Pattern:**
```json
{
    "data": [...],
    "meta": {
        "pagination": {
            "current_page": 1,
            "total_pages": 6,
            "total_count": 150,
            "per_page": 25,
            "has_next_page": true,
            "has_previous_page": false
        },
        "filters": {
            "status": "active",
            "created_after": "2023-01-01"
        },
        "query_time": "0.045s"
    },
    "links": {
        "self": "/api/v2/users?page=1",
        "next": "/api/v2/users?page=2",
        "first": "/api/v2/users?page=1",
        "last": "/api/v2/users?page=6"
    }
}
```

**Cursor-Based Pagination Pattern:**
```json
{
    "data": [...],
    "pagination": {
        "next_cursor": "eyJpZCI6MTIzNDU2Nzg5MH0=",
        "has_more": true,
        "limit": 50
    }
}
```

### Client Processing Patterns

**Collection Iterator Implementation:**
```javascript
class APICollectionIterator {
    constructor(apiClient, endpoint, params = {}) {
        this.apiClient = apiClient;
        this.endpoint = endpoint;
        this.params = params;
        this.currentPage = null;
        this.hasMore = true;
    }
    
    async next() {
        if (!this.hasMore) return null;
        
        const queryParams = {
            ...this.params,
            page_size: this.params.page_size || 30
        };
        
        if (this.currentPage?.next_page_token) {
            queryParams.next_page_token = this.currentPage.next_page_token;
        }
        
        const response = await this.apiClient.get(this.endpoint, { params: queryParams });
        this.currentPage = response.data;
        
        // Check if more pages exist
        this.hasMore = this.currentPage.next_page_token != null;
        
        return this.currentPage;
    }
    
    async *items() {
        while (this.hasMore) {
            const page = await this.next();
            if (!page) break;
            
            for (const item of page.users || page.meetings || page.data) {
                yield item;
            }
        }
    }
}

// Usage
const userIterator = new APICollectionIterator(apiClient, '/users');
for await (const user of userIterator.items()) {
    console.log(user.email);
}
```

**React Hook for Collection Management:**
```javascript
function useAPICollection(endpoint, params = {}) {
    const [items, setItems] = useState([]);
    const [loading, setLoading] = useState(false);
    const [hasMore, setHasMore] = useState(true);
    const [nextPageToken, setNextPageToken] = useState(null);
    
    const loadMore = async () => {
        if (loading || !hasMore) return;
        
        setLoading(true);
        try {
            const response = await apiClient.get(endpoint, {
                params: {
                    ...params,
                    next_page_token: nextPageToken
                }
            });
            
            setItems(prev => [...prev, ...response.data.users]);
            setNextPageToken(response.data.next_page_token);
            setHasMore(!!response.data.next_page_token);
        } finally {
            setLoading(false);
        }
    };
    
    return { items, loading, hasMore, loadMore };
}
```

### Performance Optimization Patterns

**Efficient Collection Processing:**
```javascript
// Batch processing for large collections
async function processAllUsers(processor, batchSize = 100) {
    let nextPageToken = null;
    
    do {
        const response = await apiClient.get('/users', {
            params: {
                page_size: batchSize,
                next_page_token: nextPageToken
            }
        });
        
        // Process batch efficiently
        await Promise.all(
            response.data.users.map(user => processor(user))
        );
        
        nextPageToken = response.data.next_page_token;
    } while (nextPageToken);
}
```

**Caching Collection Pages:**
```javascript
class CachedCollectionManager {
    constructor() {
        this.cache = new Map();
        this.cacheTimeout = 5 * 60 * 1000; // 5 minutes
    }
    
    getCacheKey(endpoint, params) {
        return `${endpoint}?${new URLSearchParams(params).toString()}`;
    }
    
    async getPage(endpoint, params) {
        const cacheKey = this.getCacheKey(endpoint, params);
        const cached = this.cache.get(cacheKey);
        
        if (cached && Date.now() - cached.timestamp < this.cacheTimeout) {
            return cached.data;
        }
        
        const response = await apiClient.get(endpoint, { params });
        this.cache.set(cacheKey, {
            data: response.data,
            timestamp: Date.now()
        });
        
        return response.data;
    }
}
```

### Design Considerations

**Consistent Property Naming**: Standardized field names across all collection responses
**Null Handling**: Graceful handling of empty collections and missing pagination data
**Memory Management**: Efficient processing of large collections without memory overflow
**Error Recovery**: Robust error handling for partial collection loading failures
**Progressive Loading**: Support for infinite scroll and progressive data loading patterns

### How it Connects to Other Concepts

Resource collection response patterns integrate with:
- Query parameter validation for pagination and filtering parameters
- API pagination strategy for navigation token generation and validation
- REST API design principles for consistent collection endpoint design
- API response status codes for collection-specific error handling
- Performance optimization patterns for efficient large dataset processing

## Connections

- [[query-parameter-validation-pattern]] - Validation of pagination and filtering parameters
- [[api-pagination-strategy]] - Pagination token generation and navigation implementation
- [[rest-api-design-principles]] - RESTful collection endpoint design and resource modeling
- [[api-response-status-code-pattern]] - Status codes for collection errors (400, 404, 500)
- [[api-request-header-management]] - Headers for collection preferences and caching control

## Evolution Notes

- **2025-06-16**: Initial extraction from Zoom API user and meeting collection patterns
- **Future**: Expand with GraphQL connection patterns and real-time collection updates

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