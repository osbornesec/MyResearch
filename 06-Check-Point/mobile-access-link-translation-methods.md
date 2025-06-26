---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point Mobile Access ATRG processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Mobile Access Link Translation Methods

## Core Concept
Mobile Access provides three distinct Link Translation methods to convert internal URLs to public Internet-accessible URLs: URL Translation (UT), Hostname Translation (HT), and Path Translation (PT).

## URL Translation (UT)
- **Purpose**: Original link translation method
- **Status**: Maintained for backward compatibility
- **Use Case**: Legacy deployments and existing configurations

## Hostname Translation (HT)
- **Performance**: Dramatically improved performance for gateways and end users
- **Benefits**: Faster web access and fewer connectivity issues
- **Compatibility**: Enhanced support for HTML pages, JavaScript, VBScript, and web applications (SAP Portal)
- **Requirement**: More expensive server certificate needed
- **Trade-off**: Superior connectivity vs higher certificate costs

## Path Translation (PT)
- **Position**: Newest Link Translation method
- **Connectivity**: Same level as Hostname Translation
- **Advantage**: Simpler and less costly configuration than HT
- **Benefit**: Eliminates expensive server certificate requirement of HT

## Technical Function
Link Translation converts internal URLs to public URLs valid on the Internet, enabling internal resource access via any Internet-connected browser.

## Connection Potential
- Links to: URL rewriting, SSL certificate management, web application security
- Compares: Performance vs cost trade-offs in different translation methods
- Builds on: Web proxy and reverse proxy architectural patterns