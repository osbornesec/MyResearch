---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point Mobile Access ATRG processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Mobile Access HTTPD Debug Procedure

## Core Concept
HTTPD debugging for Mobile Access requires modifying httpd.conf LogLevel, enabling trace collection, and following version-specific procedures to capture portal and web traffic diagnostics.

## Debug Activation Steps
1. **Configuration Backup**: Copy $CVPNDIR/conf/httpd.conf to httpd.conf_ORIGINAL
2. **LogLevel Modification**: Change LogLevel from "emerg" to "debug" in httpd.conf
3. **Trace Log Enablement**: Version-specific trace logging configuration
4. **Log Cleanup**: Remove rotated httpd.log.* files and empty current httpd.log
5. **Policy Reload**: Execute "cvpnd_admin policy" to activate debug settings

## Version-Specific Trace Configuration

### R75.40 and Higher
- **User-Specific Tracing**: "cvpnd_admin debug trace users=<USERNAME>"
- **Targeted Collection**: Trace limited to specific user sessions

### R75.X (up to R75.30)
- **Module Loading**: Uncomment "LoadModule trace_logger /opt/CPcvpn-R75/lib/libModTrace.so"

### R71.X
- **Module Loading**: Uncomment "LoadModule trace_logger /opt/CPcvpn-R71/lib/libModTrace.so"

### R66.1 and Older
- **Module Loading**: Uncomment "LoadModule trace_logger /opt/CPcvpn-R66/lib/libModTrace.so"
- **Directory Configuration**: Uncomment "CvpnTraceLogDir /opt/CPcvpn-R66/log/trace_log/"
- **Size Limits**: Uncomment "CvpnTraceLogMaxByte 10000000"

## Debug Deactivation Procedure
1. **Trace Disable**: "cvpnd_admin debug off" for R75.40+
2. **Configuration Restore**: Replace httpd.conf with backed-up original
3. **Policy Reload**: "cvpnd_admin policy" to deactivate debug
4. **Process Restart**: Use "cvpnrestart" if debug persists

## Critical Warnings
- **File Preservation**: Never delete httpd.log file, only empty it
- **Directory Preservation**: Never delete trace_log directory, only contents
- **User Disconnection**: Debug configuration changes may disconnect active users

## Connection Potential
- Links to: Apache debugging, log analysis, web server troubleshooting
- Builds on: Check Point Mobile Access process architecture
- Integrates with: Version management and configuration control practices