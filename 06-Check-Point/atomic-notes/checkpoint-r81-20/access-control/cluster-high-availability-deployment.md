---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 Mobile Access scaling
validation-status: verified
source: "Check Point R81.20 Mobile Access Administration Guide"
domain: "High Availability"
---

# Mobile Access Cluster High Availability Architecture

## Core Concept
Mobile Access cluster deployment provides high availability and scalability for large concurrent user populations, enabling uninterrupted remote access through multiple synchronized Security Gateway cluster members with automatic failover capabilities.

## Cluster Architecture Design
- **Multiple Cluster Members**: Two or more Security Gateways with Mobile Access enabled
- **Load Distribution**: Concurrent user load distributed across cluster members
- **Synchronized Configuration**: Identical Mobile Access configuration across all cluster members
- **Automatic Failover**: Seamless user session continuity during member failures

## Network Interface Configuration
- **Three Interface Model**: Data interface to organization, Internet interface, and synchronization interface
- **DMZ Deployment Option**: Two interface model with combined data/Internet interface and sync interface
- **Subnet Separation**: Each interface operates on different network subnet
- **Redundant Connectivity**: Multiple paths for fault tolerance and load distribution

## Session Management
- **Session Synchronization**: Active user sessions synchronized across cluster members
- **Stateful Failover**: User sessions maintained during cluster member failures
- **Load Balancing**: New sessions distributed based on current member load
- **Session Persistence**: User affinity maintained to specific cluster members when required

## High Availability Benefits
- **Continuous Service**: Uninterrupted remote access during maintenance and failures
- **Scalability Enhancement**: Increased concurrent user capacity through horizontal scaling
- **Performance Optimization**: Distributed processing reduces individual member load
- **Business Continuity**: Mission-critical remote access maintained through outages

## Deployment Flexibility
- **Simple Cluster**: Basic two-member cluster for fault tolerance
- **Large-Scale Cluster**: Multiple members for high-capacity environments
- **DMZ Integration**: Cluster deployment within DMZ for enhanced security
- **Geographic Distribution**: Cluster members distributed for regional access optimization

## Synchronization Network
- **Dedicated Sync Interface**: Separate network interface for cluster synchronization traffic
- **Secure Communication**: Encrypted communication between cluster members
- **Real-Time Updates**: Immediate synchronization of configuration and session changes
- **Network Isolation**: Sync traffic isolated from production data traffic

## Administrative Management
- **Unified Configuration**: Single point of configuration for entire cluster
- **Centralized Monitoring**: Cluster health and performance monitoring through SmartConsole
- **Maintenance Windows**: Planned maintenance with automatic traffic redirection
- **Capacity Planning**: Performance metrics for optimal cluster sizing

## Enterprise Scalability
- **Concurrent User Support**: Significant increase in simultaneous user capacity
- **Performance Linearity**: Near-linear performance scaling with additional members
- **Resource Optimization**: Efficient utilization of hardware resources across cluster
- **Growth Accommodation**: Easy expansion through additional cluster member addition