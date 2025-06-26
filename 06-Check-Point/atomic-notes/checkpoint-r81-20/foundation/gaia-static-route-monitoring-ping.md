---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point Gaia OS Administration
validation-status: verified
source: Check Point Gaia OS R81.20 Administration Guide
---

# Gaia Static Route Monitoring Ping

## Core Concept
Gaia static route monitoring uses ping (IPv4) and ping6 (IPv6) features sending ICMP Echo Requests to verify next hop gateway reachability, adding routes to kernel forwarding table only after gateway verification, with configurable monitored IP addresses, failure conditions (fail-all or fail-any), and ping behavior settings for count and interval.

## Research Context
Network path monitoring and automatic failover capability for maintaining routing table accuracy, essential for dynamic network adaptation and availability.

## Source Quality
- **Primary Source**: Check Point Gaia OS R81.20 Administration Guide, November 2022
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
- Links to ICMP Echo Request concepts
- Connects to kernel forwarding table concepts
- Related to IP reachability detection concepts
- Links to automatic failover concepts