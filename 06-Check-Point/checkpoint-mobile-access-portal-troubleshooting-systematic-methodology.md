---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-mobile-access-processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Checkpoint Mobile Access Portal Troubleshooting Systematic Methodology

## Core Concept
Systematic 12-step troubleshooting methodology for Mobile Access portal unresponsiveness, covering configuration verification, logging analysis, SSL diagnostics, and process verification with specific diagnostic commands and procedures.

## Step-by-Step Diagnostic Procedure

### Initial Assessment
1. **Configuration Change Review**: Check for recent configuration changes that may have caused portal unresponsiveness
2. **Log Analysis**: Review SmartView Tracker logs for related error entries
3. **Core Dump Check**: Examine `/var/log/dump/usermode/` for core dumps

### Certificate and SSL Verification
4. **Portal Certificate Check**: Verify expected certificate configuration under Portal settings tab
5. **Certificate Conflict Resolution**: Check other portals for certificate conflicts (one certificate per IP address)
6. **SSL Handshake Verification**: Use Wireshark to verify `client_hello` and `server_hello` SSL handshake establishment

### Debug Collection and Process Verification
7. **SSL Debug Collection**: Enable kernel debug for SSL problems: `fw ctl zdebug -m fw + drop crypt cptls`
8. **VPND Debug Check**: Implement VPND debugging procedures as specified in Debug Procedures section
9. **MPDAEMON Verification**: Check MPDAEMON process responsible for HTTPD launching (reference sk87920)

### Service Status and Port Verification
10. **SSLVPN Portal Status**: Verify portal running status: `mpclient status sslvpn`
11. **HTTPD Port Configuration**: 
    - Get HTTPD high port: `mpclient getdata sslvpn`
    - Verify HTTPD process: `ps -ef |grep httpd |grep sslvpn`
    - Test connectivity: `telnet localhost [HTTPD_HIGH_PORT]` then `GET /sslvpn`
12. **HTTPD Log Analysis**: 
    - Check startup logs: `$CVPNDIR/log/httpd.starlog`
    - Enable HTTPD debugging and review: `$CVPNDIR/log/httpd.log`

## Related Issues and Solutions
- **Portal Occasional Unresponsiveness**: Reference sk92847
- **VPND Crash with Multiple Applications**: Reference sk100488
- **Post-Upgrade DNS Issues**: Reference sk98805
- **Faulty Login Page Display**: Reference sk78821

## Connection Potential
- Links to SSL certificate management procedures
- Connects with kernel debugging methodologies
- Relates to process monitoring and management frameworks
- Associates with log analysis and troubleshooting patterns