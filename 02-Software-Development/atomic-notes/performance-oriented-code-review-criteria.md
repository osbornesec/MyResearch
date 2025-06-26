# Performance-Oriented Code Review Criteria

```yaml
---
state: fleeting
type: atomic-note
created: 2025-06-16
last-reviewed: 2025-06-16
connections: 0
review-frequency: monthly
tags: [performance, code-review, optimization, efficiency]
---
```

# Performance-Oriented Code Review Criteria

## Core Concept

*Systematic evaluation of code changes for performance impact, focusing on measurable metrics and optimization opportunities across all application layers*

## Content

A performance-focused review methodology that evaluates code changes for efficiency, scalability, and resource utilization:

**Frontend Performance Criteria:**
- **Bundle Size Impact**: Assess JavaScript/CSS bundle size changes and lazy loading opportunities
- **Rendering Optimization**: Component re-render patterns, React.memo usage, and virtual DOM efficiency
- **Network Optimization**: API call patterns, caching strategies, and data fetching efficiency
- **Core Web Vitals**: Impact on Largest Contentful Paint (LCP), First Input Delay (FID), and Cumulative Layout Shift (CLS)

**Backend Performance Criteria:**
- **Algorithm Complexity**: Big O analysis for new algorithms and data processing logic
- **Database Query Efficiency**: N+1 query detection, index usage validation, and query optimization
- **Memory Management**: Memory leak prevention, garbage collection impact, and resource cleanup
- **Concurrency Patterns**: Async/await usage, connection pooling, and scalability considerations

**Performance Review Checklist:**
- Profiling data supports optimization decisions
- Caching strategies appropriate for data access patterns
- Resource pooling implemented for expensive operations
- Graceful degradation under load conditions
- Performance regression testing included

**Measurement Integration:**
- **Before/After Benchmarks**: Performance metrics comparison for significant changes
- **Load Testing Requirements**: Performance validation under expected traffic patterns
- **Monitoring Integration**: Performance metrics collection for production tracking
- **Threshold Enforcement**: Automated alerts for performance regression

**Layer-Specific Optimizations:**
- **Database**: Query optimization, indexing strategies, connection management
- **API**: Response compression, pagination efficiency, rate limiting impact
- **Frontend**: Code splitting, asset optimization, critical rendering path
- **Infrastructure**: Caching layers, CDN utilization, resource allocation

The criteria ensure performance considerations are evaluated systematically rather than as an afterthought, preventing performance debt accumulation.

## Connections

*Link to related atomic notes, sources, and MOCs*

- [[node-js-async-patterns-optimization]]
- [[react-concurrent-features-pattern]]
- [[comprehensive-testing-strategy-pattern]]

## Evolution Notes

*Track how this note has developed over time*

- **2025-06-16**: Initial capture from comprehensive code review guide analysis

## Review Schedule

*Based on importance and connection density*
- Next review: 2025-07-16
- Frequency: monthly

---

## Evergreen Processing Checklist

- [ ] Title refined to function as "concept API"
- [x] Content is self-contained and atomic
- [ ] At least 2 meaningful connections established
- [ ] State updated to `permanent` when mature
- [ ] Tags updated to reflect semantic relationships