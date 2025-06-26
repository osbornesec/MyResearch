```yaml
---
state: permanent
type: atomic-note
created: 2025-06-16
last-reviewed: 2025-06-16
connections: 4
review-frequency: monthly
tags: [query-parameters, input-validation, api-filtering, data-validation, request-processing]
domain: api-documentation
---
```

# Query Parameter Validation Pattern

## Core Concept

Query parameter validation patterns provide systematic approaches for validating, sanitizing, and processing URL query parameters in API requests, ensuring data integrity, security, and consistent request handling across different endpoints and use cases.

## Content

### What is Query Parameter Validation?

Query parameter validation encompasses systematic handling of:
- **Type Validation**: Ensuring parameters match expected data types (string, integer, boolean)
- **Range Validation**: Verifying numeric parameters fall within acceptable ranges
- **Format Validation**: Checking string parameters match required patterns (email, date)
- **Required Parameter Enforcement**: Ensuring mandatory parameters are present
- **Security Sanitization**: Preventing injection attacks and malicious input

### Why is it Important?

1. **Data Integrity**: Ensures API receives properly formatted and valid input data
2. **Security Protection**: Prevents SQL injection, XSS, and other parameter-based attacks
3. **Error Prevention**: Early validation prevents downstream processing errors
4. **Consistent Behavior**: Standardized validation ensures predictable API responses
5. **Performance Optimization**: Efficient parameter validation improves request processing speed

### Implementation Patterns

**Common Parameter Types:**
- **Filtering**: `status=active`, `type=premium` for result filtering
- **Pagination**: `page_size=30`, `page_number=1` for result pagination
- **Sorting**: `sort_by=created_at`, `order=desc` for result ordering
- **Search**: `query=searchterm`, `fields=name,email` for search operations
- **Options**: `include_deleted=false`, `expand=details` for response options

**Validation Rules:**
- **Data Type**: Integer, string, boolean, date validation
- **Length Limits**: Minimum and maximum string/array length constraints
- **Value Ranges**: Numeric min/max boundaries and enumerated value lists
- **Format Patterns**: Regular expressions for email, phone, date formats
- **Required Fields**: Mandatory parameter presence validation

### Zoom API Query Parameter Examples

**User Listing Parameters:**
```http
GET /v2/users?status=active&page_size=30&page_number=1

Query Parameters:
- status: enum['active', 'inactive', 'pending'] (optional, default: 'active')
- page_size: integer[1-300] (optional, default: 30)
- page_number: integer[1+] (optional, default: 1)
```

**Meeting Parameters:**
```http
GET /v2/users/{userId}/meetings?type=scheduled&from=2023-01-01&to=2023-12-31

Query Parameters:
- type: enum['scheduled', 'live', 'upcoming'] (optional)
- from: date[YYYY-MM-DD] (optional)
- to: date[YYYY-MM-DD] (optional)
```

### Validation Implementation Patterns

**Parameter Schema Definition:**
```javascript
const userListSchema = {
    status: {
        type: 'string',
        enum: ['active', 'inactive', 'pending'],
        default: 'active'
    },
    page_size: {
        type: 'integer',
        min: 1,
        max: 300,
        default: 30
    },
    page_number: {
        type: 'integer',
        min: 1,
        default: 1
    }
};
```

**Validation Function:**
```javascript
function validateQueryParameters(params, schema) {
    const validated = {};
    const errors = [];
    
    for (const [key, rules] of Object.entries(schema)) {
        const value = params[key];
        
        // Apply default if not provided
        if (value === undefined) {
            validated[key] = rules.default;
            continue;
        }
        
        // Type validation
        if (rules.type === 'integer') {
            const parsed = parseInt(value);
            if (isNaN(parsed)) {
                errors.push({
                    field: key,
                    message: `Must be a valid integer`
                });
                continue;
            }
            
            // Range validation
            if (rules.min && parsed < rules.min) {
                errors.push({
                    field: key,
                    message: `Must be at least ${rules.min}`
                });
                continue;
            }
            
            if (rules.max && parsed > rules.max) {
                errors.push({
                    field: key,
                    message: `Must be at most ${rules.max}`
                });
                continue;
            }
            
            validated[key] = parsed;
        }
        
        // Enum validation
        if (rules.enum && !rules.enum.includes(value)) {
            errors.push({
                field: key,
                message: `Must be one of: ${rules.enum.join(', ')}`
            });
            continue;
        }
        
        validated[key] = value;
    }
    
    return { validated, errors };
}
```

**Express.js Middleware Example:**
```javascript
function validateQuery(schema) {
    return (req, res, next) => {
        const { validated, errors } = validateQueryParameters(req.query, schema);
        
        if (errors.length > 0) {
            return res.status(400).json({
                code: 300,
                message: 'Query parameter validation failed',
                errors: errors
            });
        }
        
        req.validatedQuery = validated;
        next();
    };
}

// Usage
app.get('/v2/users', validateQuery(userListSchema), getUsersHandler);
```

### Security Considerations

**Input Sanitization:**
```javascript
function sanitizeQueryParameter(value) {
    if (typeof value !== 'string') return value;
    
    // Remove potential script tags
    value = value.replace(/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi, '');
    
    // Escape HTML entities
    value = value.replace(/[&<>"']/g, (match) => {
        const entities = {
            '&': '&amp;',
            '<': '&lt;',
            '>': '&gt;',
            '"': '&quot;',
            "'": '&#39;'
        };
        return entities[match];
    });
    
    return value;
}
```

**Parameter Length Limiting:**
```javascript
const MAX_QUERY_LENGTH = 2048;
const MAX_PARAM_COUNT = 50;

function validateQueryLimits(queryString, paramCount) {
    if (queryString.length > MAX_QUERY_LENGTH) {
        throw new Error('Query string too long');
    }
    
    if (paramCount > MAX_PARAM_COUNT) {
        throw new Error('Too many query parameters');
    }
}
```

### Error Response Patterns

**Validation Error Response:**
```json
{
    "code": 300,
    "message": "Query parameter validation failed",
    "errors": [
        {
            "field": "page_size",
            "message": "Must be between 1 and 300"
        },
        {
            "field": "status",
            "message": "Must be one of: active, inactive, pending"
        }
    ]
}
```

### Design Considerations

**Default Value Strategy**: Provide sensible defaults for optional parameters
**Performance Impact**: Efficient validation that doesn't significantly impact request processing
**Internationalization**: Support for locale-specific date and number formats
**Backward Compatibility**: Handle deprecated parameters gracefully
**Documentation Integration**: Automatic API documentation generation from validation schemas

### How it Connects to Other Concepts

Query parameter validation integrates with:
- API response status codes for validation error communication (400 Bad Request)
- REST API design principles for consistent parameter naming and behavior
- API request header management for complete request validation
- Resource collection response patterns for pagination parameter handling
- API documentation patterns for parameter specification and examples

## Connections

- [[api-response-status-code-pattern]] - 400 Bad Request responses for validation failures
- [[rest-api-design-principles]] - Consistent parameter naming and RESTful query conventions
- [[api-request-header-management]] - Complete request validation including headers and parameters
- [[resource-collection-response-pattern]] - Pagination parameter validation and processing
- [[api-base-url-configuration]] - URL construction with validated query parameters

## Evolution Notes

- **2025-06-16**: Initial extraction from Zoom API user listing and parameter patterns
- **Future**: Expand with GraphQL variable validation and modern API validation frameworks

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