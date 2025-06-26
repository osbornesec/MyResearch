---
created: 2025-06-17T12:12:00Z
state: permanent
type: atomic-note
source: sk91380 - How to troubleshoot Gaia Portal (WebUI)
source-credibility: 9
research-context: Check Point Gaia System Administration
validation-status: verified
connections: 5
---

# Check Point Gaia Portal Troubleshooting Methodology

## Core Concept
Gaia Portal (WebUI) troubleshooting requires systematic diagnosis of Apache server components, TCL script processing, file permissions, certificate configurations, and browser compatibility issues across multiple architectural layers.

## Gaia Portal Architecture Components

### System Architecture
- **Apache server**: Handles HTTPS requests via CGI interface
- **TCL scripts**: Process portal functionality through CGI backend
- **JavaScript/CSS frontend**: ExtJS library-powered client interface
- **Session management**: Proprietary Apache module coordinating with Gaia DB and RBA roles
- **Multi-portal integration**: Routing coordination for multiple portal environments

## Common Troubleshooting Scenarios

### Browser Access Issues
**Symptoms**: Cannot access portal, specific page errors, stuck after login, browser error displays

**Diagnostic approach**:
1. **Cross-browser testing**: Verify with IE, Firefox, Chrome, Safari (supported browsers)
2. **Browser console examination**: F12 in Chrome, Ctrl+Shift+J in Firefox
3. **Network connectivity**: Ping tests and tcpdump traffic capture
4. **HTTPS connection verification**: Traffic analysis for connection establishment

### Command/Function Execution Failures
**Gaia Clish comparison test**:
- **Command works in Clish**: Gaia Portal problem (check browser logs, TCL server logs)
- **Command fails in Clish**: Gaia Database problem (check `/var/log/messages`)

## File Permissions and Ownership Requirements

### TCL Files (`/web/cgi-bin2/`)
- **Ownership**: admin:root
- **Permissions**: -r-xr-xr-x
- **Correction commands**:
  ```bash
  chown -v admin:root /web/cgi-bin2/*
  chmod -v a=rx /web/cgi-bin2/*
  ```

### CGI Security File (`/usr/bin/cgisu`)
- **Ownership**: admin:config
- **Permissions**: -r-sr-x---
- **Correction commands**:
  ```bash
  chown -v admin:config /usr/bin/cgisu
  chmod -v 4550 /usr/bin/cgisu
  ```

### Temporary Directory (`/tmp`)
- **Ownership**: admin:root
- **Permissions**: drwxrwxrwt
- **Correction commands**:
  ```bash
  chown -v admin:root /tmp
  chmod -v a=rwxt /tmp
  ```

## Certificate and SSL Configuration

### Certificate File Verification
**Required files**:
- `/web/conf/server.key` (must not be empty)
- `/web/conf/server.crt` (must not be empty)

**Verification commands**:
```bash
cat /web/conf/server.key
cat /web/conf/server.crt
```

### Portal Port Configuration
**Security Gateway**: Configure via SmartConsole Platform Portal section (Main URL field)
**Management Server**: Use Clish `set web ssl-port <Port_Number>`

## Advanced Troubleshooting Techniques

### Log File Analysis
- **Apache logs**: `/usr/local/apache2/logs/`
- **System messages**: `/var/log/messages*`
- **HTTP error logs**: `/var/log/httpd2_error_log`
- **TCL debug files**: `/tmp/<feature>.debug`

### Multi-Portal Routing Issues
**Diagnostic command**: `fw ctl zdebug + crypt`
**Test isolation**: `fw unloadlocal` (reload: `fw fetch localhost`)

### SSL Mutex Error Resolution
**Error indication**: "Cannot create SSLMutex with file"
**Resolution**:
```bash
rm -r /usr/local/apache2/logs/ssl_mutex
tellpm process:httpd2
tellpm process:httpd2 t
```

## Connection Potential
Links to Check Point Gaia system administration, Apache server configuration, certificate management, and web portal security implementations.