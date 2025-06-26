---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# QoS URI Resource Matching

## Core Concept
QoS supports URI (Uniform Resource Identifier) resource matching to identify and classify HTTP traffic according to specific URLs, enabling application-layer traffic differentiation beyond traditional port-based classification.

## URI Resource Configuration
- **Resource Type**: Only "URI for QoS" type resources supported in QoS Rule Base
- **Protocol Independence**: HTTP services with URI resources can be defined on any port
- **Single Resource Limit**: Only one URI resource allowed per QoS rule
- **Regular Expression Support**: Pattern matching using a*b format where a and b are strings

## URI Format Support
**Full URI (without protocol prefix):**
- **Format**: Complete URI without "http://" prefix
- **Example**: "www.my-site.com/pic/qos.gif"
- **Use Case**: Specific domain and path targeting

**Relative URI:**
- **Format**: URI starting after domain name, must begin with slash
- **Example**: "/pic/qos.gif"
- **Use Case**: Path-based matching independent of domain

## Regular Expression Pattern
- **Supported Format**: a*b (where * is wildcard)
- **String Components**: 'a' and 'b' are literal strings
- **Wildcard Placement**: Single wildcard between string components
- **Pattern Examples**: "images*.gif", "*/downloads/*"

## Implementation Restrictions
- **One Per Rule**: Cannot add multiple URI resources to single rule
- **Legacy Compatibility**: Previous QoS versions allowed multiple URIs per rule
- **Migration Requirement**: Existing multi-URI rules must be redesigned for current version

## Service Integration
- **HTTP Services**: URI resources work with HTTP service definitions
- **Port Flexibility**: HTTP services with URI resources support any port configuration
- **Protocol Specificity**: Designed specifically for HTTP traffic classification

## Traffic Classification Benefits
- **Application Awareness**: Classify traffic based on application content rather than just protocol
- **Granular Control**: Different bandwidth allocation for different web applications
- **Resource Prioritization**: Prioritize specific web resources or applications
- **Content-Based QoS**: Make bandwidth decisions based on accessed content

## Research Context
Advanced QoS feature enabling application-layer traffic classification for sophisticated web application bandwidth management and prioritization.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor technical documentation

## Connection Potential
- Links to HTTP traffic classification and application-layer filtering
- Connects to QoS rule configuration and service definition
- Relates to web application performance optimization strategies