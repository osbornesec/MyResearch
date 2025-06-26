---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-mobile-access-processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Checkpoint Link Translation Methods Comparison

## Core Concept
Mobile Access supports three distinct link translation methods for converting internal URLs to public Internet-accessible URLs: URL Translation, Hostname Translation, and Path Translation, each with specific performance and compatibility characteristics.

## URL Translation (UT)
- **Legacy Method**: Original link translation approach maintained for backward compatibility
- **Basic Functionality**: Converts internal URLs to external format
- **Compatibility**: Works with older systems and simple web applications
- **Limitations**: Performance and connectivity constraints compared to newer methods

## Hostname Translation (HT)
- **Performance Optimized**: Dramatically improved performance for gateways and end users
- **Enhanced Compatibility**: Wider range of website support with improved HTML, JavaScript, VBScript handling
- **Advanced Applications**: Enhanced support for complex web applications (SAP Portal)
- **Certificate Requirements**: Requires more expensive server certificate for implementation
- **Connectivity**: Faster web access with fewer connectivity issues

## Path Translation (PT)
- **Latest Method**: Newest link translation implementation
- **Optimal Balance**: Same connectivity level as Hostname Translation without complex configuration
- **Cost Effective**: Eliminates expensive server certificate requirement of Hostname Translation
- **Simplified Deployment**: Easier and less costly configuration compared to HT
- **Performance**: Maintains high performance while reducing implementation complexity

## Implementation Considerations
- **Backward Compatibility**: UT maintained for legacy system support
- **Performance vs Cost**: HT offers best performance but highest cost
- **Optimal Choice**: PT provides best balance of performance, compatibility, and cost
- **Migration Path**: Organizations can upgrade from UT → PT → HT based on requirements

## Connection Potential
- Links to SSL certificate management procedures
- Connects with web application compatibility testing
- Relates to performance optimization strategies
- Associates with cost-benefit analysis frameworks