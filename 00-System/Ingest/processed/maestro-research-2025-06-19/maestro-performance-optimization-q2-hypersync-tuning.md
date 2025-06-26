---
title: CheckPoint Maestro Performance Optimization - HyperSync Tuning
source-credibility: 9/10
verification-status: verified
sources: Official CheckPoint Documentation
created: 2024-12-19
---

# CheckPoint Maestro Performance Optimization - HyperSync Tuning

## Core Answer

CheckPoint Maestro HyperSync does NOT require manual tuning for memory or CPU allocation. The system is engineered for automatic resource management.

### Key HyperSync Facts

1. **Automatic Resource Management**
   - HyperSync handles resource allocation automatically
   - No manual CPU or memory tuning supported or required
   - Orchestrator dynamically manages resources based on load

2. **HyperSync Function**
   - Ensures each connection flow has real-time backup within Security Group
   - Distributes active connections across all appliances
   - Maintains synchronized backups through efficient cluster communication

3. **Best Practices for Optimal HyperSync Performance**
   - **Hardware Consistency**: Use identical appliance models and software versions
   - **Regular Monitoring**: Use Maestro Web UI or CLI for performance tracking
   - **Incremental Scaling**: Add appliances gradually and verify synchronization
   - **Software Updates**: Keep firmware current for performance improvements
   - **Orchestrator Sizing**: Ensure appropriate orchestrator hardware for SGM count

4. **Resource Allocation Method**
   - Managed at Security Group level
   - Based on current network load and traffic patterns
   - Automatic adjustment as appliances are added/removed

## Source Verification

**Primary Sources:**
- Check Point Maestro Administration Guides
- Official Maestro HyperSync documentation
- Check Point support documentation

**Credibility Assessment:**
- Source Type: Official vendor documentation
- Credibility Score: 9/10
- Verification Method: Multiple official sources confirming automatic management
- Key Quote: "Maestro uses an orchestrator to dynamically assign compute resources—including CPUs and memory—to Security Group Members"

## Additional Context

- Manual HyperSync tuning is neither required nor supported
- Focus should be on maintaining hardware/software consistency
- Performance optimization comes from proper architecture rather than manual tuning
- Adding compute resources is done through Maestro Web UI or RESTful APIs