# API Specifications Prompt

**Context:** API Specifications define the interfaces through which external systems or components interact with the software system. They detail endpoints, methods, request/response formats, authentication, error handling, and usage examples. This document serves as a contract between the API provider and consumers, ensuring consistent, reliable integration between systems.

**Required Expertise Persona:** As a Senior API Architect with 15+ years of experience designing and documenting APIs for enterprise systems, you possess deep expertise in API design principles, standards, and best practices. Your background includes designing RESTful, GraphQL, and other API types for both public and private consumption. You excel at creating clear, consistent, and developer-friendly API contracts that balance functionality with usability. Your experience includes developing API governance frameworks and standardizing API specifications across large organizations. You understand the security, performance, and versioning considerations that make APIs sustainable. Your knowledge of API documentation standards (OpenAPI/Swagger, RAML, API Blueprint) enables you to create comprehensive, precise API specifications that serve both human and machine consumers.

**Prompt:**
```
I need you to create comprehensive API Specifications for [project name].

Before diving into specific API details, take a step back and consider: What fundamental principles make an effective API design and specification? What qualities ensure that APIs are both functional and developer-friendly? Outline these core principles and explain why they're crucial for successful system integration.

Now, working methodically through the API specification process, create detailed API Specifications with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify what APIs are covered
   - References: Cite related documents (System Architecture, Data Dictionary)
   - Document Structure: Preview the specification's organization
   - API Philosophy: Outline the design principles guiding the APIs
   - Explain your approach to comprehensive API documentation

2. API Overview:
   - API Design Approach: Explain the overall API design style (REST, GraphQL, etc.)
   - API Categories: Organize APIs by functional domain
   - Common Patterns: Identify conventions used across APIs
   - Standards Compliance: Reference followed standards/specifications
   - Walk through your reasoning for the selected API approach
   - Explain how the API design aligns with system architecture

3. General API Information:
   - Base URLs: Define environment-specific base URLs
   - API Versioning: Explain the versioning strategy
   - Media Types: Specify supported request/response formats
   - Character Encoding: Define character set standards
   - Date/Time Format: Specify datetime representation
   - Pagination: Explain pagination approach
   - Filtering and Sorting: Detail query parameter conventions
   - Explain your approach to consistent API conventions
   - Walk through how these standards promote usability

4. Authentication and Authorization:
   - Authentication Methods: Detail supported authentication protocols
   - Authorization Model: Explain access control approach
   - Token Handling: Specify token formats and lifecycle
   - Scopes and Permissions: Define permission model
   - Security Requirements: Detail security implementation
   - Explain your security design decisions
   - Walk through the authentication flow from start to finish

5. Error Handling:
   - Error Response Format: Define standard error structure
   - HTTP Status Codes: Specify used status codes and meanings
   - Error Types: Categorize possible errors
   - Error Messages: Define message format and conventions
   - Validation Errors: Explain validation error handling
   - Explain your error handling philosophy
   - Walk through how consumers should interpret and handle errors

6. Rate Limiting and Quotas:
   - Rate Limit Approach: Define rate limiting strategy
   - Headers: Specify rate limit related headers
   - Quotas: Detail any usage quotas
   - Throttling Behavior: Explain behavior when limits exceeded
   - Explain your reasoning for rate limit design
   - Walk through how clients should handle rate limiting

7. API Reference:
   - For each API endpoint:
     * Endpoint Path: Define the complete URL path
     * HTTP Method: Specify the HTTP verb
     * Description: Provide a clear explanation of purpose
     * Request Parameters: Detail path, query, and header parameters
     * Request Body: Define structure with data types and constraints
     * Response Format: Detail response structure and status codes
     * Example Requests: Provide complete request examples
     * Example Responses: Show example responses for different scenarios
     * Error Scenarios: Detail potential error conditions
     * Notes: Include important considerations
     * Explain your design decisions for this endpoint
     * Walk through a typical use case scenario
   - Organize endpoints logically by resource or function
   - Explain relationships between related endpoints

8. Data Models:
   - For each data model:
     * Schema Definition: Detail fields and their properties
     * Field Descriptions: Explain each field's purpose
     * Data Types: Specify types and formats
     * Validation Rules: Define constraints and validation
     * Relationships: Explain connections to other models
     * Examples: Provide sample representations
   - Explain your data model design approach
   - Walk through how models map to system entities

9. Common Use Cases:
   - For key business scenarios:
     * Scenario Description: Explain the use case
     * API Sequence: Detail the sequence of API calls
     * Sample Code: Provide implementation examples
     * Considerations: Note important factors
   - Explain your approach to scenario documentation
   - Walk through how these examples guide implementation

10. Webhooks and Events:
    - Event Types: Define available event notifications
    - Payload Format: Specify the event data structure
    - Subscription Process: Explain how to subscribe to events
    - Delivery Guarantees: Detail reliability considerations
    - Security: Explain webhook security measures
    - Explain your event design approach
    - Walk through the event delivery flow

11. API Lifecycle and Versioning:
    - Version Strategy: Detail how API versions are managed
    - Deprecation Policy: Explain how APIs are deprecated
    - Migration Guide: Provide guidance for version transitions
    - Support Timeline: Define version support periods
    - Explain your versioning philosophy
    - Walk through a version transition scenario

12. SDK and Client Libraries:
    - Available SDKs: List official client libraries
    - Installation: Provide setup instructions
    - Basic Usage: Show getting started examples
    - Advanced Features: Detail additional capabilities
    - Explain your approach to API client support
    - Walk through SDK implementation examples

13. Testing and Sandbox:
    - Test Environment: Detail available test environments
    - Test Accounts: Explain how to obtain test credentials
    - Test Data: Describe available test data
    - Testing Tools: Recommend API testing approaches
    - Explain your API testing philosophy
    - Walk through the API testing process

14. Performance and Optimization:
    - Performance Considerations: Detail efficiency best practices
    - Caching: Explain caching mechanisms
    - Batch Operations: Detail bulk operation capabilities
    - Optimization Tips: Provide guidance for efficient usage
    - Explain your performance design decisions
    - Walk through optimization strategies

After completing the initial draft, validate the document against these criteria:
- Are all API endpoints completely and accurately documented?
- Is the authentication mechanism clearly explained?
- Are data models precisely defined with all constraints?
- Are error scenarios and handling comprehensively covered?
- Is the versioning strategy clearly defined and practical?
- Do examples cover both typical and edge cases?
- Is the specification consistent in terminology and format?
- Would the specification be sufficient for a developer to implement against?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, code blocks for examples, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure, philosophy)
- API Overview (approach, categories, patterns, compliance)
- General API Information (URLs, versioning, media types, encoding, datetime, pagination, filtering)
- Authentication and Authorization (methods, model, tokens, scopes, security)
- Error Handling (format, status codes, types, messages, validation)
- Rate Limiting and Quotas (approach, headers, quotas, throttling)
- API Reference (endpoints with path, method, description, parameters, body, responses, examples, errors)
- Data Models (schema, descriptions, types, validation, relationships, examples)
- Common Use Cases (description, sequence, code, considerations)
- Webhooks and Events (types, format, subscription, guarantees, security)
- API Lifecycle and Versioning (strategy, deprecation, migration, timeline)
- SDK and Client Libraries (available, installation, usage, features)
- Testing and Sandbox (environment, accounts, data, tools)
- Performance and Optimization (considerations, caching, batch, tips)

**Validation criteria:**
- Complete and accurate documentation of all API endpoints
- Clear explanation of authentication mechanism
- Precise definition of data models with all constraints
- Comprehensive coverage of error scenarios and handling
- Clear and practical versioning strategy
- Examples covering both typical and edge cases
- Consistency in terminology and format
- Sufficient detail for implementation
- Developer-friendly presentation and organization
- Consideration of API consumers' needs