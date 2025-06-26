**Table of Contents**

-   Introduction
    
-   Process Flow Diagrams and Description
    
-   Troubleshooting
    
-   Debug Procedures
    

Collapse the Entire Article

## Introduction

Show / Hide this section

> Check Point Mobile Access Software Blade is the safe and easy solution to connect to corporate applications over the Internet with your Smartphone, tablet or PC. The solution provides enterprise-grade remote access via both Layer-3 VPN and SSL VPN, allowing you simple, safe and secure connectivity to your email, calendar, contacts and corporate applications.
> 
> **For the most up to date information about new features and troubleshooting information, refer to the [R81 Mobile Access Administration Guide](https://sc1.checkpoint.com/documents/R81/WebAdminGuides/EN/CP_R81_MobileAccess_AdminGuide/Default.htm).**
> 
> ## _Motivation for Mobile Access Blade_
> 
> Remote access market is growing:
> 
> -   Wireless devices are all over.
> -   People are working from home or on the road.
> -   People want access from any type of device.
> -   Traditional IPSec VPN products do not offer this type of connectivity:  
>     -   Preinstalled "fat" client software
>     -   Difficult to connect from other local networks (using different port than 80 / 443)
> 
> ## _What Mobile Access Blade does?_
> 
> **Using SSL "Clientless" VPN**
> 
> -   Enables using resources from an organization's internal network.
> -   Only a browser is required on the client side.
> -   Traffic from the client to Mobile Access Blade gateway is encrypted (using SSL, not IPSec).
> -   Some features require a thin client (either ActiveX or Java applet) which is deployed automatically (on demand).
> -   Smartphones can access with dedicated application without establishing VPN tunnel.
> 
> ## _Feature Overview: Access_
> 
> -   Provides pure clientless access to applications deployed on the internal network:  
>     -   Web applications (using Link Translation)
>     -   Windows file shares (using CIFS mounts)
>     -   Mail applications (Webmail for IMAP)
> -   Provides "thin client" access to network-level applications:  
>     -   TCP/UDP (SNX Network Mode)
>     -   TCP only for non-admin users (SNX Application Mode)
>     -   Embedded applications (Telnet, SSH, FTP, RDP, Jabber, etc.)
> 
> ## _Feature Overview: Authentication_
> 
> -   Provides authentication based on:  
>     -   Realm based authentication with support for multi-factor authentication
> -   Provides authorization based on:  
>     -   User groups (Internal, LDAP/AD, Radius)
>     -   Resource’s Protection Level  
>         -   Endpoint Security scan results
>         -   Authentication strength
> 
> ## _Feature Overview: Audit and Platforms_
> 
> -   Provides auditing:  
>     -   Administrator's actions are logged
>     -   Traffic events are logged
> -   Supports different end-user platforms: Windows, Linux, Mac OS X, Android, iOS
> 
> ## _Feature Overview: Security_
> 
> -   Provides a unique security solution:  
>     -   Gateway  
>         -   FW, IPS, AV
>         -   'Stateful Inspection' on tunneled traffic
>         -   Web Intelligence
>     -   Endpoint Security On Demand (ESOD)  
>         -   Compliance Scanner (formerly known as ICS)
>         -   Secure Workspace (formerly known as ISW)
>     -   Update service (IPS, AV, ESOD)
> 
> ## _Feature Overview: Reverse Proxy_
> 
> -   This feature adds support for Reverse Proxy for standard Web Applications on your servers, using Mobile Access. Reverse Proxy users browse to an address (URL) that is resolved to the Mobile Access Gateway's IP address. Then, the Mobile Access Gateway passes the request to an internal server, according to the Reverse Proxy rules. 
> -   Administrator controls the security level (HTTP or HTTPS) of connections between users and resources.
> 
> ## _Feature Overview: Unified Policy (since R80.10)_
> 
> -   Mobile Access, in the R80.10 release, supports both Legacy Policy (as in R77.30 and below) and Unified Policy.
> -   By default, the Mobile Access blade is set to Legacy Policy. The Administrator can switch to Unified Policy (requires policy install).
> -   For more detailed Troubleshooting information, refer to the Troubleshooting section of this document.
> -   When you include Mobile Access in the Unified Policy, you configure all rules related to the Mobile Access portal, Capsule Workspace, and on-demand clients in the Access Control Policy.
> -   In the Access Control Rule Base, you can configure rules that:  
>     -   Apply to all Mobile Access gateways, or some of them.
>     -   **Now you can apply to one or more Mobile Access clients, such as the Mobile Access portal or Capsule Workspace.**
> -   Mobile Access features such as Protection Levels, Secure Workspace, and Endpoint Compliance also apply.
> -   Note that when you use the Unified Access Policy, some Mobile Access features and settings are still configured in the 'SmartDashboard > Mobile Access tab'.
> -   For more extensive information about this feature, refer to the "Mobile Access and the Unified Access Policy" section in the [Mobile Access R80.10 Administration Guide](https://sc1.checkpoint.com/documents/R80.10/WebAdminGuides/EN/CP_R80.10_MobileAccess_AdminGuide/html_frameset.htm).
> -   For information about Unified Policy, refer to the "Creating an Access Control Policy" section in the [Next Generation Security Gateway R80.10 Guide](https://sc1.checkpoint.com/documents/R80.10/WebAdminGuides/EN/CP_R80.10_NexGenSecurityGateway_Guide/html_frameset.htm).
> 
> ## _Feature Overview: Application Wrapping (since R80.10)_
> 
> -   **Capsule Workspace App Wrapping** leverages **Capsule Workspace** and extends it to offer 3rd party apps in a security container that provides multi security layers and access for both iOS and Android apps. 
> -   For more detailed information, refer to [sk111558 - Capsule Workspace App Wrapping](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk111558).

## Process Flow Diagrams and Description

Show / Hide this section

> -   ### Mobile Access Blade Network Deployment
>     
>     ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/MAB_Blade_Network_Deployment.png "MAB Blade Network Deployment")
>     
>     In the simplest Mobile Access deployment, one Mobile Access enabled Security Gateway inspects all traffic, including all Mobile Access traffic. IPS and Anti-Virus can be active on all traffic as well. The Security Gateway can be on the network perimeter.
>     
>     This is the recommended deployment. It is also the least expensive and easiest to configure, as it only requires one gateway machine for easy and secure remote access.
>     
> -   ### Mobile Access Blade as a Reverse HTTP Proxy
>     
>     ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Reverse_HTTP_Proxy.PNG "Reverse HTTP Proxy")
>     
>     A reverse proxy appears to the client just like an ordinary web server. No special configuration on the client is necessary.
>     
> -   ### Link Translation: Flow
>     
>     ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Link_Translation.PNG "Link Translation")
>     
>     Link Translation is the process by which Mobile Access converts internal URLs to public URLs that are valid on the Internet, so that internal resources become accessible via any Internet-connected browser.
>     
>     Mobile Access supports different methods of Link Translation:
>     
>     -   **URL Translation** (UT) the original link translation method, maintained for backward compatibility.
>         
>     -   **Hostname Translation** (HT) provides dramatically improved performance for Mobile Access gateways and end users, resulting in faster Web access and fewer connectivity issues. It gives access a wider range of websites, with enhanced support for HTML pages, JavaScript, VBscript, and Web applications (such as the SAP Portal).
>         
>     -   **Path Translation** (PT) is the newest Link Translation method. It offers the same connectivity level as Hostname Translation, without the more difficult and costly configurations. (Hostname Translation requires a more expensive server certificate.)
>         
> -   ### File Shares: Protocols Involved
>     
>     ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/FileSharesProtocols1506302317.png)
>     
>     A file share defines a collection of files, made available across the network by means of a protocol, such as SMB for Windows, that enables actions on files, including opening, reading, writing and deleting files across the network.
>     
> -   ### Web Mail Support: Protocols Involved
>     
>     ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/WebMail_Support_Protocols.PNG "WebMail Support Protocols")
>     
>     Mobile Access supports built-in Web mail. Web mail provides a simple way for remote users, through a web browser interface, to access their email. Employees can access their email from any computer that has access to the Internet, such as a computer in a library, or Internet cafe. There is no need to install special email or remote access software. This is helpful for employees who work outside the office on a regular basis.
>     
>     Mobile Access provides a Web front-end for any email application that uses the IMAP protocol for incoming mail, and SMTP for outgoing mail.
>     
>     E-mail stored on the IMAP server is manipulated through the browser interface without having to transfer the messages back and forth. Users can connect to several mail servers depending on their authorization.
>     
> -   ### Authentication: Single Sign-On (SSO)
>     
>     ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/SSO.PNG "SSO")
>     
>     Native applications that you access with SSL Network Extender can use Single Sign-On (SSO) functionality. With SSO support, users connect automatically to native applications that require login. The native application gets the Mobile Access portal login username and password parameters from the internal server. This feature is supported in R77.20 and higher. It requires a SSL Network Extender client upgrade.
>     

## Troubleshooting

Show / Hide this section

> Refer to [Troubleshooting Mobile Access](https://sc1.checkpoint.com/documents/R77/CP_R77_Mobile_Access_WebAdmin/23036.htm) in the R77 versions Mobile Access Administration Guide for detailed information about:
> 
> -   [Troubleshooting Web Connectivity](https://sc1.checkpoint.com/documents/R77/CP_R77_Mobile_Access_WebAdmin/23036.htm#o23485)
> -   [Troubleshooting Outlook Web Access](https://sc1.checkpoint.com/documents/R77/CP_R77_Mobile_Access_WebAdmin/23036.htm#o23486)
> -   [Common OWA problems](https://sc1.checkpoint.com/documents/R77/CP_R77_Mobile_Access_WebAdmin/23036.htm#o23492)
> -   [Troubleshooting File Shares](https://sc1.checkpoint.com/documents/R77/CP_R77_Mobile_Access_WebAdmin/23036.htm#o23523)
> -   [Troubleshooting Citrix](https://sc1.checkpoint.com/documents/R77/CP_R77_Mobile_Access_WebAdmin/23036.htm#o23524)
> 
> #### Mobile Access Blade Troubleshooting by Topic
> 
> 1.  Unified Policy (since R80.10)
>     
> 2.  Cannot access Mobile Access portal
>     
> 3.  Web application appears broken due to
>     
> 4.  Application Wrapping (since R80.10)
>     
> 5.  File Shares
>     
> 6.  ESOD
>     
> 7.  SNX
>     
> 8.  Capsule Workspace
>     
> 9.  ActiveSync
>     
> 10.  CVPND process is not starting
>     
> 11.  Reverse Proxy
>     
> 
> 1.  ### Troubleshooting Topic: Unified Policy (since R80.10)
>     
>       
>     Mobile Access, in the R80.10 release, supports both Legacy Policy (as in R77.30 and below and Unified Policy).
>     
>     By default, the Mobile Access blade is set to Legacy Policy. The Administrator can switch to Unified Policy (**requires policy install**).
>     
>     ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Unified%20Policy_11708210110.png)
>     
>     **Notes regarding Unified Policy as the Policy Source:**
>     
>     -   A single Gateway cannot be set to both Unified and Legacy. (see screen capture above)
>     -   You cannot migrate Legacy Policy (i.e. Mobile Access rules) to the Unified Policy.  
>         -   The Administrator needs to create the rules manually.
>         -   **The Administrator must enable Mobile Access on each Policy layer, in the unified Policy, that contains Mobile Access rules (applications). (see screen capture below)**
>         -   The same Mobile Access applications that were used in Legacy Policy can and should be used in Unified Policy.
>     -   For information on the use of Access Roles and client type in the Access Role, refer to the “Access Roles for Remote Access” section in the [Mobile Access R80.10 Administration Guide](https://sc1.checkpoint.com/documents/R80.10/WebAdminGuides/EN/CP_R80.10_MobileAccess_AdminGuide/html_frameset.htm).
>     -   For best practice on how to define Mobile Access rules, refer to the “Best Practices for Rules” section in the [Mobile Access R80.10 Administration Guide](https://sc1.checkpoint.com/documents/R80.10/WebAdminGuides/EN/CP_R80.10_MobileAccess_AdminGuide/html_frameset.htm).
>         
>         ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Unified%20Policy_21708210117.png)
>         
>     
>     **Related Solution**
>     
>     -   It is highly recommended to refer to [sk116015 - Publishing applications in Mobile Access configured in "Unified Access Policy" mode](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk116015)
>     -   For more information about Mobile Access limitations in R80.10, refer to the Mobile Access section of [sk110519 - Check Point R80.10 Known Limitations](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk110519)
>     
>       
>     **Unified Policy Logs**
>     
>     The Mobile Access Authorization log, in Unified Policy, always contains both Mobile Access and Firewall blades. As a result:
>     
>     -   The log's "blade" icon will be a Multiple blade icon.![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/sk104577_Multi_Blade_Icon1708230046.png) Example:
>         
>         ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Mobile%20Access%20log%20in%20Unified%20Policy%20mode1708230054.png)
>         
>     
>       
>     
>     -   When you cick on the log line, you wil display the full Unified Policy log. Example:
>         
>         ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Unified_mode_log1708230059.png)
>         
>     
>       
>     -   Filtering using 'blade:"Mobile Access"', will match such logs if SmartLog indexing is enabled. (In Standalone installation, SmartLog indexing is disabled, by default).
> 
>   
> 
> 1.  ### Troubleshooting Topic: Cannot access Mobile Access portal
>     
>     -   **_Mobile Access portal does not respond_**
>         
>         1.  First check out for any recent configuration changes that may have caused the MAB portal not to respond.
>             
>         2.  Look up SmartView Tracker log for any related logs.
>             
>         3.  Check for core dumps at : _/var/log/dump/usermode/_
>             
>         4.  Check under the 'Portal settings' tab that the gateway has the expected certificate configured.
>             
>         5.  If you get the wrong certificate, check in other portals, as we only use one certificate on a given IP address. Note that "All portals on the same IP address use the same certificate" (see [sk94965](http://supportcontent.checkpoint.com/solutions?id=sk94965)).
>             
>         6.  Try to figure out whether SSL handshake was established (look for the certificate in the address bar, or use Wireshark and look for `client_hello` and `server_hello`).
>             
>         7.  In case of an SSL problem, you need to collect kernel debug:  
>             _\# fw ctl zdebug -m fw + drop crypt cptls_
>             
>         8.  Check VPND debugs, as described in the section "Debug Procedures" - "Debugging the Gateway side" - "_vpnd_ process"
>             
>         9.  Check MPDAEMON the 'matching component' that is also responsible for launching HTTPD (its parent process) - see [sk87920](http://supportcontent.checkpoint.com/solutions?id=sk87920).
>             
>         10.  Check that the SSLVPN Portal is running: _\# mpclient status sslvpn_
>             
>         11.  Get the HTTPD's high port:
>             
>             _\# mpclient getdata sslvpn_
>             
>             For HTTPD:
>             
>             _\# ps -ef |grep httpd |grep sslvpn_  
>             _\# telnet localhost \[HTTPD\_HIGH\_PORT\]_  
>             _\# GET /sslvpn_
>         12.  Check HTTPD's starting log:
>             
>             _$CVPNDIR/log/httpd.starlog_
>         13.  Enable HTTPD debugs, as described in the section "Debug Procedures" - "Debugging the Gateway side" - "_httpd_ process", and check: _$CVPNDIR/log/httpd.log_
>             
>         
>         Related solutions:
>         
>         -   [sk92847 (Mobile Access portal is occasionally unresponsive)](http://supportcontent.checkpoint.com/solutions?id=sk92847)
>         -   [sk100488 (VPND Crash when many applications/rules defined in Mobile Access policy)](http://supportcontent.checkpoint.com/solutions?id=sk100488)
>     -   _**Mobile Access portal does not respond after upgrade**_
>         
>         Common issue at upgrade when DNS is not yet configured or reachable - See [sk98805](http://supportcontent.checkpoint.com/solutions?id=sk98805)
>         
>         Related solutions:
>         
>         -   [sk78821 (Mobile Access login page is faulty displayed after upgrade)](http://supportcontent.checkpoint.com/solutions?id=sk78821)
>     -   _**Authentication fails due to:**_
>         
>         -   **_Realms configuration (Pre-R80.10)_**
>             
>             -   Mistake in realm configuration: if there is a problem, _cvpnd_ is not starting and MAB portal is not accessible, log line in _$CVPNDIR/log/cvpnd.elg_ (Failed to init cvpnauth). Check _$FWDIR/database/authentication\_objects.C_ (which contains the realms configuration).
>                 
>             -   Additional realm was configured but is not shown to the users in the portal (no drop down list/drop down without the new realm).  
>                 Check that the correct realm is in _$CVPNDIR/conf/cvpnd.C_ - _attribute portalRealmNames_
>                 
>         -   **_Multiple Login Options configuration (Since R80.10)_**
>             
>             -   The Pre-R80.10 gateway, uses Single Authentication settings only. (Old style UX)
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/sk104577_Old_UX_Single_Auth1708230115.png)
>                 
>             
>               
>             
>             -   The R80.10 gateway, **by default**, uses Single Authentication settings. (New style UX)
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/sk104577_R80_10_Single_Auth1708230118.png)
>                 
>             -   In addition, you can (**and should**) use the Multiple Authentication Option configuration.
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/sk104577_R80_10_Multi_Login1708230124.png)
>                 
>             
>               
>             
>             -   User Look and feel in the Mobile Access Portal, configured with Multiple Login options.
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/sk104577_R80_10_Multi_login_look1708230127.png)
>                 
>             
>               
>             
>             -   R80.10 gateway can prevent Single Authentication clients (i.e. clients not listed in [sk111583](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk111583)), from accessing the gateway.
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/sk104577_R80_10_Prevent_Single_Auth_Clients1708230132.png)
>                 
>             
>               
>             
>             -   R80.10 gateway can prevent authentication done using Single Authentication configuration.
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/sk104577_R80_10_Prevent_Single_Auth1708230133.png)
>                 
>             
>               
>             
>             -   Proxy configuration for DynamicID authentication is now defined in the Gateway's proxy configuration, instead of the Mobile Access Proxy configuration.
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/sk104577_R80_10_Proxy_Config_for_DynamicID1708230135.png)
>                 
>             
>               
>             For more information on Multiple Login Options for R80.x Gateways, refer to the “Multiple Login Options for R80.x Gateways” section in the [Mobile Access R80.10 Administration Guide](https://sc1.checkpoint.com/documents/R80.10/WebAdminGuides/EN/CP_R80.10_MobileAccess_AdminGuide/html_frameset.htm).
>         -   _**User record lookup**_
>             
>             -   Looking in wrong directory (symptom might be latency):
>                 
>                 -   Might be indicated by log in _$CVPNDIR/log/cvpnd.elg_ / capture of traffic.
>                     
>                 -   Look in realm configuration.
>                     
>                 -   Make sure that in Security Gateway properties > _Other_ > _User directory_ everything is configured properly.
>                     
>             -   Looking with wrong identifier (certificate with DN that contain also the e-mail address, certificate with wrong (old) directory path, directory expects different value like e-mail instead of username):
>                 
>                 -   User will get "`Wrong user name or password`" / "`Certificate authentication failed`"
>                     
>                 -   Admin should know which identifier his directory is expecting to get.
>                     
>                 -   Most of the problems might be solved by realm configuration, sometimes you also need to configure the directory settings (wide impact) - (both with GuiDbEdit)
>                     
>                     -   Example 1 - Microsoft\_AD > Common > UserLoginAttr
>                     -   Example 2 - Directory Settings > UserLoginAttr / lookup\_type
>         -   _**User group mapping**_
>             
>             -   Symptom: user is not allowed to a specific resource (application link is not shown in the portal) / user get "`User is not authorized`" after login.
>                 
>             -   You could see the groups of the user in _$CVPNDIR/log/cvpnd.elg_ (during Login only) = _au\_fetchuser\_callback user obj:_
>                 
>             -   Keep in mind, if user was added/removed to/from a group after login, it will take affect only after next login (Known limitation).
>                 
>             
>             Related solutions:
>             
>             -   [sk44572 ('No group defined for the user' log for failed user authentication via RADIUS)](http://supportcontent.checkpoint.com/solutions?id=sk44572)
>         -   _**Credential validation**_
>             
>             -   Symptom: user cannot login (Wrong user name or password)
>                 
>             -   Check that account is not locked (in the directory).
>                 
>             -   Make sure that other users can login.
>                 
>             -   Make sure user is not expired and time is allowed (on the user record, mostly for internal users also relevant from templates or generic\*).
>                 
>             -   _$CVPNDIR/log/cvpnd.elg_ might contain details if this is not a problem with the credentials (such as expiration).
>                 
>             
>             Related solutions:
>             
>             -   [sk98260 (User sometimes unable to authenticate to Mobile Access Portal and receives "username or password is incorrect" message)](http://supportcontent.checkpoint.com/solutions?id=sk98260)
>             -   [sk61060 (Realms certificate configuration for Client Certificate Authentication)](http://supportcontent.checkpoint.com/solutions?id=sk61060)
>         -   _**Admin LDAP AU credentials**_
>             
>             Related solutions:
>             
>             -   [sk97806 (Mobile Access LDAP user fails to connect or is not matched to a relevant policy rule)](http://supportcontent.checkpoint.com/solutions?id=sk97806)
>         -   _**Client certificate issues**_
>             
>             -   CRL is not available (might happen 24 hours after the problem started) - should be stated in SmartView Tracker Log.
>                 
>                 -   Internal CA: make sure the Management is available
>                     
>                 -   External CA: make sure there is no firewall in the middle that blocks the traffic.
>                     
>             -   Certificate is expired - should be stated in SmartView Tracker Log. If not, it is in _$CVPNDIR/log/cvpnd.elg_
>                 
>             -   Using the "wrong" info from the certificate. Refer to the "Troubleshooting Topic: Cannot access Mobile Access portal" - section "Authentication fails due to:" - subsection "User record lookup".
>                 
>         -   _**Multi-challenge issues (AD password remediation, LDAP/RADIUS challenges, SMS OTP, SecurID challenges)**_
>             
>             -   Password remediation require LDAPs should be configured on the Account unit (LDAP server properties -> Encryption -> Use Encryption (SSL).
>                 
>             -   Server might not be trusted: wrong fingerprint.
>                 
>             
>             Related solutions:
>             
>             -   [sk98258 (Username is missing from Mobile Access challenge page)](http://supportcontent.checkpoint.com/solutions?id=sk98258)
>         -   _**Kerberos**_
>             
>             -   Kerberos is an authentication method that is used to identify the user in front of the internal servers.
>                 
>             -   Kerberos creates a ticket which it uses to authenticate the user instead of using credentials.
>                 
>             -   Inside the ticket, the user name, allowed servers and amount of time for which the ticket is active are listed.
>                 
>             -   In order to create a Kerberos ticket, Mobile Access Blade uses the portal credentials (user name and password).THis is done in order to create the ticket and to authenticate to the internal server.
>                 
>             -   When a user logs in to Mobile Access Blade without user name and password, e.g. with a certificate. Kerberos Constrained Delegation (KCD) is used. KCD allows you to create tickets for other users based on a delegate ticket which was created from credentials that are allowed.
>                 
>             
>             **Troubleshooting & Debugging Kerberos Constrained Delegation (KCD)**
>             
>             -   See if there is a Kerberos Constrained Delegation failure entry in SmartView Tracker or SmartLog. Under Mobile Access logs and run _cvpnrestart_ on the Security Gateway through SSH.
>                 
>             -   KCD flow consist of 2 main steps:
>                 
>                 1.  Creating a Kerberos ticket for the delegate user (that was configured previously).
>                     
>                     1.  In order to see that the ticket was created successfully, see that _$CVPNDIR/tmp/krbcc/krbkt\_\*_ and _$CVPNDIR/tmp/krbcc/krbtgt\_\*_ exist (_krbkt\_\*_ and _krbtgt\_\*_ are the prefixes of the files.)
>                         
>                     2.  Run the command on the Security Gateway "_klist $CVPNDIR/tmp/krbcc/krbtgt\_\*_", where _krbtgt\_\*_ is the prefix of the file and see that the ticket contains information such as date and user name.
>                         
>                     3.  If the ticket does not contain information, please check your AD and SmartDashboard configuration again.
>                         
>                 2.  Creating a ticket for the end user.
>                     
>                     1.  In order to see that the ticket was created successfully, see that _$CVPNDIR/tmp/krbcc/krbcc\_\*_ exists (_krbcc\_\*_ is the prefix of the file.)
>                         
>                     2.  Run the command on the Security Gateway "_klist $CVPNDIR/tmp/krbcc/krbcc\_\*_", where _krbcc\_\*_ is the prefix of the file and see that the ticket contains information such as date and user name.
>                         
>                     3.  If the ticket does not contain information, please check your AD and SmartDashboard configuration again.
>                         
>             -   Kerberos relies on symmetric key cryptography and requires a trusted third party, and may use public-key cryptography during certain phases of authentication. Kerberos uses UDP port 88 by default. **Please validate to open UDP port 88 between the gateway and the relevant machines.**
>                 
>             -   In case of other problems, please attach the following logs after reproduction of the login problem:
>                 
>                 -   Mobile Access httpd log - _$CVPNDIR/log/httpd.log\*_
>                     
>                 -   Mobile Access cvpnd log - _$CVPNDIR/log/cvpnd.elg\*_
>                     
>                 -   KCD logs - _$CVPNDIR/log/KCDUtil.elg_ after enabling them
>                     
>                     To enable KCD logs:
>                     
>                     1.  Edit the _$CVPNDIR/conf/cvpnd\_internal\_settings.C_ on the Security Gateway
>                         
>                     2.  Change the value of _EnableKCDDebug_ from "`false`" to "`true`"
>                         
>                     3.  Run _cvpnrestart_
>                         
>             
>             **Known Limitations:**
>             
>             -   The Kerberos Constrained Delegation user must be configured on the Account Unit object in SmartDashboard - no UI is available.
>             
>             Related solutions:
>             
>             -   [sk102194 (Kerberos authentication fails on Mobile Access Gateway)](http://supportcontent.checkpoint.com/solutions?id=sk102194)
>             -   [sk106848 (Mobile Access web applications using Kerberos authentication do not work)](http://supportcontent.checkpoint.com/solutions?id=sk106848)
>             -   [sk116246 (Single Sign On with Kerberos Constrained Delegation does not work for Mobile Access users from the same domain with different UPN Suffixes)](http://supportcontent.checkpoint.com/solutions?id=sk116246)
>             -   [sk108176 (Configuring Mobile Access Gateway to use Kerberos Constrained Delegation (KCD) for a Load-Balanced Web Application / Exchange)](http://supportcontent.checkpoint.com/solutions?id=sk108176)
>             -   [sk110629 (Kerberos is not supported as SSO method for registration to Exchange Server for Mobile Access Push Notifications)](http://supportcontent.checkpoint.com/solutions?id=sk110629)
>             -   [sk111134 (Kerberos Authentication fails when Web application sends duplicate "WWW-Authenticate: Negotiate" HTTP headers)](http://supportcontent.checkpoint.com/solutions?id=sk111134)
>             -   [sk116154 ("connection to Exchange Failed" error when Business Mail (Capsule Workspace Mail) fails to authenticate with Exchange Server using Kerberos)](http://supportcontent.checkpoint.com/solutions?id=sk116154)
>     
>     -   _**'vpnd', server certificate, multi-portal (port conflicts), fw policy, SSL version/ciphersuite, proxies**_
>         
>         -   For discussion of possible port conflict, see [sk66607](http://supportcontent.checkpoint.com/solutions?id=sk66607)
>             
>         -   For server settings of SSL version: 'Policy menu > Global Properties > SmartDashboard Configuration > Configure > Portal Properties'
>             
>         -   Also have a look at: SmartDashboard > 'Policy' menu > 'Global Properties...' > 'Remote Access' > 'SSL Network Extender' > 'Encryption'
>             
>         -   For a discussion of the limitation of both MAB and gateway as proxy, see [sk110013](http://supportcontent.checkpoint.com/solutions?id=sk110013).
>             
>         
>         Related solutions:
>         
>         -   [sk66607 (Cannot access Mobile Access Blade (MAB) portal since 'vpnd' occupies http port)](http://supportcontent.checkpoint.com/solutions?id=sk66607)
>         -   [sk94965 (Mobile Access gateway presents wrong certificate to portal users)](http://supportcontent.checkpoint.com/solutions?id=sk94965)
>         -   [sk98805 (vpnd unresponsive when name resolution not available)](http://supportcontent.checkpoint.com/solutions?id=sk98805)
>     -   _**Conflicts with SNX setup / proxy replacement**_
>         
>         Related solutions:
>         
>         -   [sk95592 (SNX Application Mode overwrites proxy information and breaks connectivity to portal)](http://supportcontent.checkpoint.com/solutions?id=sk95592)
> 
>   
> 
> 1.  ### Troubleshooting Topic: Web application appears broken due to
>     
>     -   **_Link Translation (LT) issues (UT/HT/PT)_**
>         
>         See description of Link Translation in the section "Process Flow Diagrams and Description" above.
>         
>         For detailed information about configuration of LT method per Security Gateway and per application, refer to [R77 versions Mobile Access Administration Guide](https://sc1.checkpoint.com/documents/R77/CP_R77_Mobile_Access_WebAdmin/html_frameset.htm).
>         
>         To troubleshoot Link Translation issues:
>         
>         -   You need to understand the 4 parts of the Client-to-Server communication:
>             
>             -   Request from Client to Security Gateway
>             -   Request from Security Gateway to Server
>             -   Response from Server to Security Gateway
>             -   Response from Security Gateway to Client
>         -   Check Client-to-Server communication without Mobile Access Blade - is it working?
>             
>             Use Fiddler in order to see the original requests and responses. (Important: Use Fiddler only after cleaning the browser cache.)
>             
>             You can use the following tools to see the requests from client to Security Gateway and from Security Gateway to Server, in addition to the response from Server to Security Gateway and gateway to client:
>             
>             -   Client to Security Gateway requests & responses: Fiddler
>             -   Server to Security Gateway requests & responses: _trace\_log_
>         -   Check Browser JavaScript errors. Pressing F12 key usually opens a console to see JavaScript errors, which can help identify the LT problems.
>             
>         -   Various LT problems:
>             
>             -   Wrong translation of the strings:
>                 
>                 -   When find wrong LT value, then we need to search which rule causes the problem.
>                     
>                 -   After finding the rule, understand why we had a match on the original text.
>                     
>                     Example: _url == link_ is translated as _url = CP\_PT\_TRANS(= link)_
>             -   Missing translation: the HTML code was not translated by the Security Gateway, which results in bad links
>                 
>                 -   Compare the behavior of the server with Mobile Access Blade, and without Mobile Access Blade using Fiddler.
>         -   When troubleshooting PT issues, you need to understand PT _Substitute.features.conf_ file.
>             
>             -   You need to understand how to use and read Apache regular expressions.
>         -   When troubleshooting LT issues, it is very useful to enable LT logs in Mobile Access Blade:
>             
>             -   LT logs appear in the _$CVPNDIR/log/httpd.log_ file after setting the value:
>                 
>                 From:
>                 
>                 _CvpnLogTDError "LTFLOW" 0_  
>                 _CvpnLogTDError "LTCONTENT" 0_
>                 
>                 To:
>                 
>                 _CvpnLogTDError "LTFLOW" 5_  
>                 _CvpnLogTDError "LTCONTENT" 5_
>                 
>                 in the _$CVPNDIR/conf/httpd.conf_ file and running the "_cvpnd\_admin policy_" command.
>                 
>                 This is especially helpful for UT and HT.
>                 
>         
>         Related solutions:
>         
>         -   [sk103685 (Text Formatting issues with OWA on Exchange 2013 SP1 via Mobile Access in Path Translation mode)](http://supportcontent.checkpoint.com/solutions?id=sk103685)
>         -   [sk101076 (Disabling Mobile Access 'Content-Analyzer' feature for specific host)](http://supportcontent.checkpoint.com/solutions?id=sk101076)  
>             (Content analyzer is a component for classifying responses according to their content type, to understand whether the Security Gateway can translate their links)
>     -   **_Cookie management issues (on Security Gateway, on client-side, same origin policy)_**
>         
>         **Symptoms:**
>         
>         -   Web application not working.
>         -   User is asked for credentials over and over.
>         -   Receiving portal error 401 - Unauthorized (this might be SSO issue too).
>         
>         **How to know:**
>         
>         -   Collect trace log from the Security Gateway, and Fiddler capture of this Web App without Mobile Access Blade.
>             
>         -   Check that on the Fiddler requests (no Mobile Access Blade) there is a cookie sent to the server on the request header "Cookie".
>             
>         -   A cookie should also appear in the parallel trace log requests to the internal server.
>             
>         -   If you cannot see the cookie in the trace log, then this is causing the unauthorized response from the server.
>             
>         
>         **Possible solutions:**
>         
>         -   If this Web App is configured with PT, try using HT, since cookie handling in HT is different.
>             
>         -   If this is already HT, try configuring the app with "Cookie on browser" mode:
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/HT_Settings1506280704.png)
>         -   Send Mobile Access Logs to [Check Point Support](http://www.checkpoint.com/services/contact/index.html).
>             
>     -   _**Authorization configuration (check SmartView Tracker)**_
>         
>         **Symptoms:**
>         
>         -   User cannot see a link that he should be allowed to see.
>         -   User receives an "`Unauthorized`" message when accessing an app.
>         
>         **How to know:**
>         
>         -   Configuration issue: Check that one of this user's user groups is mapped in the Mobile Access Blade policy to that specific application.
>             
>         -   Check in SmartView Tracker under Mobile Access logs for this user's unauthorized log. The message there might help. (For example: DNS Resolving issue, Certificate problem).
>             
>         
>         **Possible solutions:**
>         
>         -   Check Configuration: make sure the user is mapped to the application (check if the user was moved to other user groups.)
>             
>         -   Send Mobile Access logs to [Check Point Support](http://www.checkpoint.com/services/contact/index.html).
>             
>     -   _**Colliding host names (undefined behavior)**_
>         
>         **Symptoms:**
>         
>         -   An app that should have SSO is prompting for credentials (SSO not working).
>         
>         **How to know:**
>         
>         -   Check if the problematic app host name, is also the host name in another web app.
>             
>         -   Check if this problem is reproducing for all users or for a specific user.
>             
>         -   So, if there are 2 or more apps configured on the same host name with the same directories,  
>             there might be a mix-up between the apps, since we identify the app according to its authorized locations (host + directories),  
>             so the other configurations may be mixed (SSO, LT):
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Authorized_Locations1506280728.png)
>         
>         **Possible solutions:**
>         
>         -   If you need both apps, try not to have them both for the same users.
>             
>         -   If you need 2 applications with the same exact "Authorized Locations". you should unite them to one app.
>             
>         -   If you want 2 different configurations, try different directories for each app so no mix can happen, for example:  
>             One with "`Directories`" : "`/example1`", and the other web app with : "`/example2`".
>             
>         -   Send Mobile Access logs to [Check Point Support](http://www.checkpoint.com/services/contact/index.html).
>             
>     -   _**Browser compatibility (vendor, version, user-agent, mobile device)**_
>         
>         **Symptoms:**
>         
>         -   Broken web app on one browser (usually IE is more problematic).  
>             For example: either received Blank page for web app, or web app not displayed correctly.
>         
>         **How to know:**
>         
>         -   **Clear browser Cache!**
>             
>         -   Try to reproduce the issue on other browsers.
>             
>         -   See if this web app works fine on the problematic browser without Mobile Access Blade, to check if this is a Mobile Access Blade issue or not.
>             
>         
>         **Possible solutions:**
>         
>         -   If this is an IE issue only:
>             
>             1.  Try commenting out the following lines in _$CVPNDIR/conf/Web\_inside.location.conf_ file:
>                 
>                 _CvpnAddIECompResponseHeader_  
>                 _CvpnAddIECompRequestHeader_
>             2.  **Clear cache!**
>                 
>             3.  After commenting out, run _cvpnd\_admin policy_ command.
>                 
>             4.  Try to reproduce.
>                 
>         -   If this is a mobile computability issue, try using this web app on any mobile browser and see computability.
>             
>         -   Clear browser cache and send Mobile Access logs to [Check Point Support](http://www.checkpoint.com/services/contact/index.html) (with Fiddler also).
>             
>     -   _**Large file uploads or POST requests ('httpd' and PHP configuration)**_
>         
>         **Symptoms:**
>         
>         -   POST requests are failing (timeout / error 500).
>         -   Usually this happens in file uploads flow.
>         
>         **How to know:**
>         
>         -   Test Fiddler without Mobile Access Blade, and compare it with trace log with Mobile Access Blade, and file the problematic upload request (in both).
>             
>         -   Check if there is informative info on the response (example: missing cookie, not completed).
>             
>         -   Is the Problematic POST request received from the browser with the header "Transfer-Encoding" "chunked" ? What is the "Content-length"?
>             
>             -   NOTE: If it is "chunked" with "content-length 0", there was a bug recently discovered, where this type of request causes _libcurl_ to not set an upload size. Servers may react differently to this.
>                 
>             -   Example for "chunked" issue: without Mobile Access Blade - the request is chunked, with Mobile Access Blade request is not chunked (The Security Gateway changed it). Maybe the internal server cannot handle such requests/ did not expect it.
>                 
>         
>         **Possible solutions:**
>         
>         -   In the file _$CVPNDIR/conf/includes/Web\_inside.location.conf_ file, try to increase the value of _CvpnMaxPostStoredSize_ (default is "10,000") - maybe try "50,000".
>             
>         -   See if request without Mobile Access Blade is "chunked" or not.
>             
>         -   If this is a timeout issue: maybe there is a mismatch between "_KeepAliveTimeout_" on the Security Gateway and the server. If you know what the "keep alive" of the server is, try increasing the one on the Security Gateway to match it.
>             
>         -   Clear browser cache and send Mobile Access Logs to [Check Point Support](http://www.checkpoint.com/services/contact/index.html) (with Fiddler also).
>             
>     -   _**SSO does not work**_
>         
>         **Symptoms:**
>         
>         -   SSO is not working.
>         
>         **How to know:**
>         
>         -   If Web Form, is it automatic detect? if "Yes", try configuring a specific criterion, if you know what is the exact request:
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/SSO_for_Web_Form1506280810.png)
>         
>         **Notes:**
>         
>         -   Citrix Storefront WF SSO is still not supported automatically - you will need to configure it with the following parameters:
>             
>             -   Sign in URL: _https:///Citrix/StoreWeb/ExplicitAuth/Login_
>             -   Post URL: _https:///Citrix/StoreWeb/ExplicitAuth/LoginAttempt_
>             -   Post data: _username=$USERNAME&password=$PASSWORD&loginBtn=Log+On&StateContext_
>         -   If regular SSO, make sure the internal server auth protocol is standard, and that the server is returning HTTP error "401".
>             
>             In _libcurl_ trace logs, the authentication request to the internal should return HTTP error "401" with the header "WWW-Authenticate",  
>             check if this exists or we did not even get here (for example HTTP error "403" - not allowed to get this page).
>             
>             If HTTP error "401" is received from the server, then check that we sent a request again with the header "Authentication" to the internal server.  
>             This header should include the credentials somehow (or Kerberos ticket), then check the response.  
>             If "200 OK": this means SSO worked, but something else ruined the SSO (see example below).  
>             For example: Security Gateway did not pass the "200 OK" to the browser and failed the request.
>             
>         -   If Security Gateway did not get "200 OK": Check if credentials forwarded are invalid.
>             
>         -   Check that the authentication method the Security Gateway is trying is also supported by the server:
>             
>             The server returns on the header "WWW-Authentication" all the supported methods.  
>             Check that the Security Gateway is trying one that is supported on the header "Authentication".
>             
>             Options: the server changed its supported authentication methods, but the Security Gateway is still trying to use a cached auth method.
>             
>         -   SSO success means we get a cookie from the server and "200 OK". If yes, that means something after that caused the problem.
>             
>             -   Which SSO is configured:
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/SSO1506280811.png)
>             -   If invalid credentials are used: does it reproduce for all users or specific ones. If for one user, try to clear the credentials in the portal:
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Web_creds1506280813.png)
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Web_creds_21506280814.png)
>                 
>             -   If this is a mismatch issue of the authentication method with the server: See [sk98215](http://supportcontent.checkpoint.com/solutions?id=sk98215).
>                 
>             -   _**Web forms vs. HTTP SSO**_
>                 
>                 Related solutions:
>                 
>                 -   [sk102308 (HTTP Based SSO authentication fails to internal Web / Application servers if Single Sign On (SSO) is disabled in the application properties)](http://supportcontent.checkpoint.com/solutions?id=sk102308)
>                 -   [sk100557 ("Error: Page cannot be displayed. An error occurred while processing the request." when accessing an internal HTTPS server via Mobile Access using NTLM)](http://supportcontent.checkpoint.com/solutions?id=sk100557)
>     -   **_Popular Web applications requiring special configuration_**
>         
>         -   _**OWA/iNotes/DWA (Domino Web Access)**_
>             
>             Regular Web Applications configuration but with tagging in the application configuration.
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/OWA1506280357.png)
>             
>             Related solutions:
>             
>             -   [sk98744 (iNotes reply to e-mail does not work in Mobile Access Blade)](http://supportcontent.checkpoint.com/solutions?id=sk98744)
>         -   _**SharePoint**_
>             
>             Regular Web Applications configuration, but also need steps provided in [sk32086 - Is Microsoft SharePoint supported by Mobile Access Blade ?](http://supportcontent.checkpoint.com/solutions?id=sk32086).
>             
>             Related solutions:
>             
>             -   [sk32086 - Is Microsoft SharePoint supported by Mobile Access Blade ?](http://supportcontent.checkpoint.com/solutions?id=sk32086)
>         -   _**Citrix (partially Web)**_
>             
>             Citrix is configured as Citrix Services: adding a new Citrix application.
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Citrix1506280357.png)
>             
>             Secure Ticketing authority (STA) servers in Citrix application are the configuration of matching between STA server and ID.
>             
>             When Mobile Access Blade is working side by side with Citrix Access Gateway, the Secure Ticketing Authority should be configured in ordered that Mobile Access Blade will convert the Ticket ID from the ICA file to the Ticketing server.
>             
>             More information can be found in the [R77 versions Mobile Access Administration Guide](https://sc1.checkpoint.com/documents/R77/CP_R77_Mobile_Access_WebAdmin/html_frameset.htm).
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/STA_server_11506280531.png)
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/STA_server_31604260302.png)
>             
>     -   _**An exception or daemon crash ("Error while processing request")**_
>         
>         **Symptoms:**
>         
>         -   Change was made in a configuration file in _$CVPNDIR/conf/_ directory
>         -   Core dump files for _cvpnd_ or _httpd_ appear in _/var/log/dump/usermode/_ directory
>         
>         **How to know**
>         
>         -   This kind of issue is usually harder to track, without looking in the code, but if this a configuration issue that caused the _httpd_ to crash with a core dump file - open the file _$CVPNDIR/log/httpd.startlog_ and in the last line you should see a log describing why it failed.
>             
>         -   Core dump files require code investigations. But try to understand what is causing the crash? Can you reproduce the core? If yes, what is the exact flow (example: web application link causes the crash / adding favorites / ...)?
>             
>         
>         **Possible solutions**
>         
>         -   Turn on Mobile Access Blade logs, and try to reproduce the crash with core dump file and logs - send the logs and the core dump files to [Check Point Support](http://www.checkpoint.com/services/contact/index.html).
>             
>         -   If the core dump files are not generated / reproduced, send them with information on how it happened (if you know).
>             
> 2.  ### Troubleshooting Topic: Application Wrapping
>     
>       
>     **To check whether the feature is enabled:**
>     
>     1.  Connect to the command line on the Mobile Access Gateway.
>     2.  Login to Expert mode.
>     3.  Backup the current _$CVPNDIR/conf/includes/Web\_inside.location.conf_ file:  
>         _\[Expert@HostName:0\]# cp -v $CVPNDIR/conf/includes/Web\_inside.location.conf{,\_ORIGINAL}_
>     4.  Edit the current _$CVPNDIR/conf/includes/Web\_inside.location.conf_ file:  
>         _\[Expert@HostName:0\]# vi $CVPNDIR/conf/includes/Web\_inside.location.conf_
>     5.  To enable the feature, configure: _CvpnClientSideLinkTrans on_
>     6.  To disable the feature, configure: _CvpnClientSideLinkTrans off_
>     7.  Save the changes and exit from the Vi editor.
>     8.  Restart the Mobile Access software blade: _\[Expert@HostName:0\]# cvpnstop ; cvpnstart_
>     
>       
>     **To check whether the application is recognized by the gateway as a wrapped application:**
>     
>     1.  Enable trace log collection for the relevant user (instructions under "Debugging the Gateway side" in the Debug Procedures section).
>     2.  In the _apache\_request_ files, search for the _X-CPCVPN-ClientSideTrans_ header and verify that its value is _App_.
>     
>       
>     For additional troubleshooting information, refer to [sk111558 - Capsule Workspace App Wrapping](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk111558).
> 
>   
> 
> 1.  ### Troubleshooting Topic: File Shares
>     
>     -   _**General Troubleshooting:**_
>         
>         Example: We have configured _`\\server\path1`_
>         
>         -   Server may be configured as host name or DNS. If DNS entry, may not be resolved (DNS server not configured). **(Mounting issue)**
>             
>             -   Trace Log error > Mobile Access Category 'File Shares' : unresolved server name
>         -   Debug, when we do not know what is causing the permissions/authorization issues:
>             
>             -   Check the _$CVPNDIR/log/cvpnd.elg_ file - look for ERROR. We can see from the log if the problem is configuration, or a problem in the File Shares server.
>                 
>             -   Advanced:
>                 
>                 -   Try to run 'Mount' locally in the shell and it will give us a clue where the problem is.
>                     
>                 -   Send Wireshark packet capture to [Check Point Support](http://www.checkpoint.com/services/contact/index.html).
>                     
>                 -   Debug the _CvpnProc_:
>                     
>                     1.  _\[Expert@HostName:0\]# cvpnstop_
>                     2.  _\[Expert@HostName:0\]# ps aux | grep cvpnproc_
>                     3.  _\[Expert@HostName:0\]# kill -KILL $(pidof cvpnproc)_
>                     4.  _\[Expert@HostName:0\]# export TDERROR\_ALL\_ALL=5_
>                     5.  _\[Expert@HostName:0\]# $CVPNDIR/bin/cvpnproc $CVPNDIR/log/cvpnproc.elg $CVPNDIR/conf/cvpnproc.C &_
>                     6.  _\[Expert@HostName:0\]# cvpnstart_
>                     7.  Replicate the issue
>                     8.  _\[Expert@HostName:0\]# unset TDERROR\_ALL\_ALL_
>                     9.  _\[Expert@HostName:0\]# cvpnstop_
>                     10.  _\[Expert@HostName:0\]# kill -TERM $(pidof cvpnproc)_
>                     11.  _\[Expert@HostName:0\]# kill -KILL $(pidof cvpnproc)_
>                     12.  _\[Expert@HostName:0\]# cvpnstart_
>                     13.  Analyze _$CVPNDIR/log/cvpnproc.elg\*_
>     -   _**SSO doesn't work (for most cases, see Web applications SSO) (Mounting issue)**_
>         
>         Check if expected to work with SSO, and if user is prompted to reenter his/her credentials. Check the configuration.
>         
>         ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/SSO1506280602.png)
>         
>     -   _**Cannot authenticate to new Windows File Share servers (NTLMv2/SSP) (Mounting issue)**_
>         
>         Admin might have configured File Share servers we are not supporting, e.g. NTLMv2/SSP.
>         
>         Error will be "`server unreachable/no permissions`".  
>         The server admin should give us details regarding the server.
>         
>     -   _**Directory/file permission issues (File Access issue)**_
>         
>         -   Error: "`Access denied. The destination of your request has not been configured, or you do not have authorization to access it. (403) - Check configuration of your host:`"
>             
>             -   Trace Log error > Mobile Access Category 'File Shares' : The requested destination is not configured for this user's group in the Mobile Access policy.
>                 
>         -   Error: "`Access denied. The destination of your request has not been configured, or you do not have authorization to access it. (403)`"
>             
>             -   Configuration: make sure that the path is not limited, that the path you are trying to reach was included. Error will show that you do not have permissions.
>                 
>             -   There could be an error in the link, and it is not matching the configured path.
>                 
>     -   _**DFS links do not work (File Access issue)**_
>         
>         Admin might have configured DFS links that we are not supporting.
>         
>         Error will be "`server unreachable/no permissions`".  
>         The server admin should know if these are DFS links.
>         
>     -   **Related solutions:**
>         
>         -   [sk65051 (Mobile Access / Connectra file share appliaction with Unix / Linux Samba backend server)](http://supportcontent.checkpoint.com/solutions?id=sk65051)
> 2.  ### Troubleshooting Topic: ESOD
>     
>     -   _**Scanner platform support**_
>         
>         Related solutions:
>         
>         -   [sk93665 (Endpoint Security On Demand (ESOD) scan does not support native firewall on RedHat-based Linux distributions)](http://supportcontent.checkpoint.com/solutions?id=sk93665)
>     -   _**Secure Workspace does not load or crashes**_
>         
>         ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/SecureWorkspace_Troubleshooting_1_redone1604260441.png)
>         
>         ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/SecureWorkspace_Troubleshooting_2_redone1604260442.png)
>         
> 3.  ### Troubleshooting Topic: SNX
>     
>     -   _**SNX fails to install**_
>         
>         Related solutions:
>         
>         -   [sk96106 (ActiveX component fails to load in Windows 7 / Windows 8 / Windows 8.1 Internet Explorer 11)](http://supportcontent.checkpoint.com/solutions?id=sk96106)
>         -   [sk61040 (CLI SNX Installation Fails)](http://supportcontent.checkpoint.com/solutions?id=sk61040)
>         -   [sk76700 (SNX R75.X fresh installation via SecureWorkSpace fails on Windows 7 x86/x64)](http://supportcontent.checkpoint.com/solutions?id=sk76700)
>         -   [sk26747 (Windows XP SP2 pop-up blocker blocking SSL Network Extender window from opening)](http://supportcontent.checkpoint.com/solutions?id=sk26747)
>     -   _**SNX does not connect**_
>         
>         Related solutions:
>         
>         -   [sk50440 (SSL Network Extender on Windows 7 Professional x64 fails to connect)](http://supportcontent.checkpoint.com/solutions?id=sk50440)
>         -   [sk43827 (SSL Network Extender (SNX) fails to connect to SNX Portal after Internet Explorer / Chrome update)](http://supportcontent.checkpoint.com/solutions?id=sk43827)
>         -   [sk101588 (SNX connection from command line fails with "SNX: Authentication failed" when using a certificate)](http://supportcontent.checkpoint.com/solutions?id=sk101588)
>         -   [sk65086 (SNX connection failed using SSL VPN with error "Authentication failed")](http://supportcontent.checkpoint.com/solutions?id=sk65086)
>         -   [sk30772 (Browser error message: "Cannot Establish Connection to SSL Network Extender Gateway. Try to Reconnect. (#32)")](http://supportcontent.checkpoint.com/solutions?id=sk30772)
>     -   _**SNX connects, but cannot access internal site or the portal itself**_
>         
>         Related solutions:
>         
>         -   [sk63302 (Cannot connect to SNX portal after some cookies are added to the browser)](http://supportcontent.checkpoint.com/solutions?id=sk63302)
>         -   [sk101365 ("No access rules defined for user" error)](http://supportcontent.checkpoint.com/solutions?id=sk101365)
>         -   [sk97771 (SNX portal fails to load on 1100 Appliance)](http://supportcontent.checkpoint.com/solutions?id=sk97771)
>         -   [sk97811 (Traffic initiated from internal host towards SSL VPN client is dropped with "Unauthorized SSL VPN traffic" log)](http://supportcontent.checkpoint.com/solutions?id=sk97811)
>     -   _**SNX performance issues**_
>         
>         Related solutions:
>         
>         -   [sk94946 (Latency with remote access client when using simultaneously both Endpoint Connect and SNX)](http://supportcontent.checkpoint.com/solutions?id=sk94946)
> 4.  ### Troubleshooting Topic: Capsule Workspace
>     
>     -   **_Report a Problem to Check Point RnD:_**
>         
>         **Use case:** User want to report general problem or give feedback. The logs will automatically reach R&D.
>         
>         **How to perform:**
>         
>         1.  Tap the (i) button, top right (in login or passcode screen), or bottom right in home screen. About screen is displayed.
>             
>         2.  In the "About" screen, tap "Report a Problem".
>             
>         3.  Add feedback and send.
>             
>         
>         ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Report_Problem_21507060654.png)
>     -   **_Send logs by e-mail:_**
>         
>         **Use case:** User want to send logs to specific person by e-mail.
>         
>         **How to perform:**
>         
>         1.  Go to iOS setting > Capsule Workspace > turn on "Send As Mail".
>             
>         2.  Go back to the application.
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Send%20Logs1506300205.png)
>         3.  Tap the (i) button, top right (in login or passcode screen), or bottom right in home screen. "About" screen is displayed.
>             
>         4.  In the "About" screen, tap "Report a Problem". Native mail compose screen will open with logs zip file as attachment.
>             
>         5.  Send this mail to the desired e-mail.
>             
>     -   **_Send HAR (traffic) logs (iOS):_**
>         
>         **Use case:** The user would like to send traffic logs. Usually instructed by Check Point Support / RnD to do so.
>         
>         **How to perform:**
>         
>         1.  Tap the (i) button, top right (in login or passcode screen), or bottom right in home screen. About screen is displayed.
>             
>             1.  Double-tap on the logo.
>                 
>                 ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/About1506300203.png)
>         2.  Determine the log capacity and the amount of time to capture the traffic values, as instructed by Check Point Support / RnD.
>             
>         3.  **Caution: Only turn on "log sensitive data" if certain. It will then contain full traffic body.  
>             Be aware that the log may contain e-mail data, passwords, and more.**
>             
>         4.  Tap on "Start".
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/Advanced1506300203.png)
>         5.  When you finish reproducing your issue, as instructed, proceed to "_Send logs by e-mail_" (above).
>             
>     -   **_Cannot reach site:_**
>         
>         **How to identify (iOS):**
>         
>         -   **Pop up:** Connection error, Network error during site creation.
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/IMG_47771506300019.png)
>         -   **Log:** Look for "Site creation error of type" string.
>             
>         
>         **How to resolve:**
>         
>         -   Check for typo in site address
>         -   Check Internet connectivity using Safari to **any** web site - fix if needed.
>         -   Check connectivity using Safari to **wanted** site - fix if needed.
>     -   **_Wireless / 3G and DNS issues:_**
>         
>         -   Check Internet connectivity.
>         -   Check using native browser to Mobile Access Web Portal.
>     -   **_Wrong QR-code type:_**
>         
>         **How to identify:**
>         
>         -   **Pop up:**
>             
>             `Enrollment Failed`
>             
>             `Failed to establish trust   ...   Reject ID: ...`
>             
>             ![](https://sc1.checkpoint.com/sc/SolutionsStatics/sk104577/IMG_47781506300019.png)
>         -   **Log:** Look for "`Entered activation key is not valid`" string.
>             
>         
>         **How to resolve:**
>         
>         -   Make sure this is not "already used" QR code.
>         -   Check the reject ID in SmartLog.
>         -   Can validate the QR format (See [sk102796](http://supportcontent.checkpoint.com/solutions?id=sk102796)).
>     -   **_Cannot browse to a Web application:_**
>         
>         **How to identify:**
>         
>         -   All web apps are greyed out and disabled.
>         -   **Log:** You will see setting site's state from `SITE_STATE_CONNECTED` to `SITE_STATE_CONNECTED_OFFLINE` at the relevant time.
>         
>         **How to resolve:**
>         
>         -   Make sure that you have connectivity to site.
>         -   If you have connectivity to site, then [contact Check Point Support](http://www.checkpoint.com/services/contact/index.html).
>     -   **_Cannot sync mail/calendar/contact:_**
>         
>         -   Check Connectivity to 3G/Wireless
>         -   Check Connectivity to Site.
>         -   Check that Calendar is working and syncing.
>         -   Check that the user is not locked.
>         -   Check that the mailbox is not full.
>         -   Check that Outlook is syncing.
>         -   If nothing helps so far: Clear Persistent Storage.
>         -   If nothing helps: Delete and create new site.
>         -   If nothing helps: Delete and re-install the application.
>         -   If nothing helps: [Contact Check Point Support](http://www.checkpoint.com/services/contact/index.html).
>     -   **_Push messages:_**
>         
>         User does not receive mail updates (items added or deleted):
>         
>         Are we talking about push notifications or also in-app pull to refresh?
>         
>         **For push notifications only:**
>         
>         1.  Check in the app settings that "Push Notifications" is on, and if unavailable that the policy allows it.
>         2.  Check in iOS 'Settings' > 'Capsule' > 'Notifications' that the OS allows notifications.
>         3.  Check logs for lines with the "_PUSH::_" prefix for possible errors.
>         
>         Related solutions:
>         
>         -   [sk109039 (How to troubleshoot Mobile Access Push Notifications)](http://supportcontent.checkpoint.com/solutions?id=sk109039)
>         -   [sk101467 (Push notifications are not working after changing the gateway IP or MAB portal URL)](http://supportcontent.checkpoint.com/solutions?id=sk101467)
>         -   [sk103080 (Push Notifications are not received on the mobile phones due to IPS protection "Secure Socket Layer (SSL) v3.0")](http://supportcontent.checkpoint.com/solutions?id=sk103080)
>     
>     -   **_Remote wipe:_**
>         
>         Push may not work - check push flow:
>         
>         -   Token registration failed:
>             
>             -   [Contact Check Point Support](http://www.checkpoint.com/services/contact/index.html).
>         -   Push may be turned off on the client side:
>             
>             -   iOS Settings > Push notifications.
>             -   iOS Settings > Capsule > app background.
>         -   User may be 'offline':
>             
>             -   Check Internet connectivity.
>             -   Check using native browser to Mobile Access Web Portal.
>     -   **_Performance issues:_**
>         
>         The application is slow:
>         
>         -   Narrow the sync window (Gateway or Client).
>             
>         -   Consider performing "Clear Persistent Storage" (iOS Settings/General Settings).
>             
>             Application should be killed post toggling Clear Persistent storage
>         -   Check performance for the same user on another device.
>             
>         -   [Contact Check Point Support](http://www.checkpoint.com/services/contact/index.html).
>             
>         
>         Related solutions:
>         
>         -   [sk91280 (Slow Mobile Access connectivity from wireless or lossy networks)](http://supportcontent.checkpoint.com/solutions?id=sk91280)
> 5.  ### Troubleshooting Topic: ActiveSync
>     
>     **What is ActiveSync?**
>     
>     -   Additional client that can connect to the Mobile Access SSL VPN portal in addition to browser and capsule.
>         
>     -   Provides secure mail through the mobile device native mail client.
>         
>     -   Configuration is with ActiveSync application (see [R77 versions Mobile Access Administration Guide](https://sc1.checkpoint.com/documents/R77/CP_R77_Mobile_Access_WebAdmin/html_frameset.htm)).
>         
>     -   Once you click on ActiveSync configuration in Check Point Capsule, a new window will open and the ActiveSync profile will appear.
>         
>     -   ActiveSync profile configuration sets a new profile on the mobile device with the gateway properties.
>         
>     -   Once you finish the ActiveSync profile configuration, the mail will be synced into the native mail client.
>         
>     
>     **Troubleshooting:**
>     
>     -   The ActiveSync application does not appear in the Capsule application list:
>         
>         -   Check Mobile Access Blade policy, is user allowed?
>         -   Check that ActiveSync is enabled in Capsule properties.
>     -   After ActiveSync profile configuration, mail is not synced into the native mail client:
>         
>         -   Check ActiveSync configuration on SmartDashboard.
>             
>         -   Check configured authentication method\\Port Number\\ https? etc.
>             
>         -   Check connectivity between mobile device and gateway and ActiveSync server.
>             
>         -   Check SmartLog for errors: could be failed authentication problem.
>             
>         -   In case of authentication problem, in R77.20 and R77.30 check user name and domain format  
>             (See [R77 versions Mobile Access Administration Guide](https://sc1.checkpoint.com/documents/R77/CP_R77_Mobile_Access_WebAdmin/html_frameset.htm) for more information).
>             
>             For example, the default value is `domainName\UserName` (for example, `AD\user`) and the ActiveSync server expects to get aa@AD.
>             
>             In Mobile Access Gateway R77.10 and lower, the user name is just user name.
>             
>     -   Connectivity / session management issues
>         
>         -   MAB session opens for each of the following clients: Portal, Capsule, ActiveSync.
>         -   Each new session is identified in a Login log in SmartLog.
>         
>         Related solutions:
>         
>         -   [sk68120 (When using an ActiveSync app on an Android phone or an iPhone connected to R75.X Security Gateway, multiple sessions could be established for each user)](http://supportcontent.checkpoint.com/solutions?id=sk68120)
>         -   [sk103286 (iOS ActiveSync application does not send / receive e-mails while downloading a file from an e-mail on Exchange server)](http://supportcontent.checkpoint.com/solutions?id=sk103286)
>         -   [sk106607 (ActiveSync users get authentication pop-ups every few minutes after upgrading to R77.30)](http://supportcontent.checkpoint.com/solutions?id=sk106607)
> 
> 1.  ### Troubleshooting Topic: CVPND process is not starting
>     
>     To get more details about why _cvpnd_ process is not starting:
>     
>     1.  Empty the CVPND process's log file:
>         
>         _\[Expert@HostName:0\]# echo '' > $CVPNDIR/log/cvpnd.elg_
>     2.  Set the debug environment variable:
>         
>         _\[Expert@HostName:0\]# export TDERROR\_ALL\_ALL=5_
>     3.  Manually start the CVPND process:
>         
>         _\[Expert@HostName:0\]# cvpnd $CVPNDIR/log/cvpnd.elg $CVPNDIR/conf/cvpnd.C_
>     4.  Wait until you get the prompt back.
>         
>     5.  Unset the debug environment variable:
>         
>         _\[Expert@HostName:0\]# unset TDERROR\_ALL\_ALL_
>     6.  Analyze the _$CVPNDIR/log/cvpnd.elg_ file
>         
> 2.  ### Troubleshooting Topic: Reverse Proxy
>     
>       
>     For troubleshooting and debugging refer to [sk110348 - Mobile Access Reverse Proxy](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk110348).

## Debug Procedures

Show / Hide this section

> _**What to debug?**_
> 
> <table><tbody><tr><td>Issue area</td><td>What to debug</td></tr><tr><td>Login / Portal traffic, Web traffic, Link Translation, DNS,<br>SSO (partial), Web Intelligence, CSRF protection</td><td><em>httpd</em> process</td></tr><tr><td>Configuration from policy, Authentication, Authorization,<br>Session management, cluster sync, kernel tables, SSO (partial)</td><td><em>cvpnd</em> process</td></tr><tr><td>SNX, SSL termination, client certificate verification</td><td><em>vpnd</em> process +<br><em>VPN kernel</em> module</td></tr></tbody></table>
> 
> _**How to debug Mobile Access, SSL VPN?**_
> 
> 1.  Debugging the Gateway side
>     
>     -   _httpd_ process
>         
>     -   _cvpnd_ process
>         
>     -   _vpnd_ process
>         
>     -   _cvpnproc_ process
>         
>     -   _pinger_ process
>         
> 2.  Debugging MAB in Unified Policy Mode
>     
> 3.  Debugging the user side
>     
>     -   Problems with web application
>         
>     -   Problems with Secure WorkSpace (SWS)
>         
>     -   Problems with Native Applications
>         
>     -   Thin-client deployment mechanism (C-Shell)
>         
> 4.  Debugging Policy Installation (FWD and CPD)
>     
> 
> ### (1) Debugging the Gateway side
> 
> -   #### Debugging the Gateway side - _httpd_ process
>     
>     **To start the debug:**
>     
>     1.  Backup the current _$CVPNDIR/conf/httpd.conf_ file:
>         
>         _\[Expert@HostName:0\]# cp -v $CVPNDIR/conf/httpd.conf $CVPNDIR/conf/httpd.conf\_ORIGINAL_
>     2.  Edit the current _$CVPNDIR/conf/httpd.conf_ file:
>         
>         _\[Expert@HostName:0\]# vi $CVPNDIR/conf/httpd.conf_
>     3.  Change the "_LogLevel_" from _"emerg"_ to _"debug"_.
>         
>     4.  In order to enable trace log collection:
>         
>         <table><tbody><tr><td>Version</td><td>Instructions</td></tr><tr><td>R75.40 and higher</td><td><p>Trace log is now collected for a specific user.</p><p>Save the changes and exit from Vi editor. Then run:</p><em>[Expert@HostName:0]# cvpnd_admin debug trace users=&lt;USERNAME&gt;</em></td></tr><tr><td>R75.X (up to R75.30)</td><td><p>Remove the # sign in front of this line:</p><em>LoadModule trace_logger /opt/CPcvpn-R75/lib/libModTrace.so</em></td></tr><tr><td>R71.X</td><td><p>Remove the # sign in front of this line:</p><em>LoadModule trace_logger /opt/CPcvpn-R71/lib/libModTrace.so</em></td></tr><tr><td>R66.1 and older</td><td><p>Remove the # sign in front of these lines:</p><p><em>LoadModule trace_logger /opt/CPcvpn-R66/lib/libModTrace.so</em><br><em>CvpnTraceLogDir /opt/CPcvpn-R66/log/trace_log/</em><br><em>CvpnTraceLogMaxByte 10000000</em></p></td></tr></tbody></table>
>         
>     5.  Save the changes and exit from Vi editor.
>         
>     6.  Remove the rotated _$CVPNDIR/log/httpd.log.\*_ files, if they exist:
>         
>         _\[Expert@HostName:0\]# rm -i $CVPNDIR/log/httpd.log.\*_
>     7.  Empty the _$CVPNDIR/log/httpd.log_ file:
>         
>         _\[Expert@HostName:0\]# echo '' > $CVPNDIR/log/httpd.log_
>         
>         **IMPORTANT: Do not delete this log file!**
>     8.  If trace log was enabled, then make sure to delete all content from _$CVPNDIR/log/trace\_log/_ directory
>         
>         **IMPORTANT: Do not delete the directory itself!**
>     9.  Reload the Mobile Access policy:
>         
>         _\[Expert@HostName:0\]# cvpnd\_admin policy_
>         
>         **Note:**
>         
>         -   If you see that the debug is not being collected in the _$CVPNDIR/log/httpd.log_ file, the run: _cvpnrestart_  
>             (This will restart the _cvpnd_ and _httpd_ processes - all existing Mobile Access web connections will be disconnected, but the Mobile Access sessions will remain open)
>     
>     **To stop the debug:**
>     
>     1.  Disable the trace log collection in R75.40 and higher:
>         
>         _\[Expert@HostName:0\]# cvpnd\_admin debug off_
>     2.  Restore the original _$CVPNDIR/conf/httpd.conf_ file:
>         
>         _\[Expert@HostName:0\]# cp -v $CVPNDIR/conf/httpd.conf $CVPNDIR/conf/httpd.conf\_DEBUG_
>         
>         _\[Expert@HostName:0\]# cp -v -f $CVPNDIR/conf/httpd.conf\_ORIGINAL $CVPNDIR/conf/httpd.conf_
>     3.  Reload the Mobile Access policy:
>         
>         _\[Expert@HostName:0\]# cvpnd\_admin policy_
>         
>         Notes:
>         
>         -   This might disconnect the current users
>         -   If you see that the debug is still being collected, then run _cvpnrestart_  
>             (This will restart the _cvpnd_ and _httpd_ processes - all existing Mobile Access connections will be disconnected)
>     
>     **Enabling Apache server status page:**
>     
>     1.  Backup the current _$CVPNDIR/conf/httpd.conf_ file:
>         
>         _\[Expert@HostName:0\]# cp -v $CVPNDIR/conf/httpd.conf $CVPNDIR/conf/httpd.conf\_ORIGINAL_
>     2.  Edit the current _$CVPNDIR/conf/httpd.conf_ file:
>         
>         _\[Expert@HostName:0\]# vi $CVPNDIR/conf/httpd.conf_
>     3.  Add the following lines:
>         
>         _LoadModule status\_module /opt/CPshrd-R<version>/web/Apache/2.2.0/modules/libmod\_status.so_  
>         _ExtendedStatus On_  
>         _<Location /Login/server-status>_  
>         _SetHandler server-status_  
>         _</Location>_
>         
>         Examples:
>         
>         -   For R77.X: `/opt/CPshrd-R77/web/...`
>         -   For R76: `/opt/CPshrd-R76/web/...`
>         -   For R75.40VS: `/opt/CPshrd-R75.40VS/web/...`
>         -   For R75.4x: `/opt/CPshrd-R75.40/web/...`
>         -   For R75.20 / R75.30: `/opt/CPshrd-R75.20/web/...`
>         -   For R75 / R75.10: `/opt/CPshrd-R75/web/...`
>         -   For R71.X: `/opt/CPshrd-R71/web/...`
>         -   For R70.X: `/opt/CPshrd-R70/web/...`
>     4.  Save the changes and exit from Vi editor.
>         
>     5.  Reload the Mobile Access policy:
>         
>         _\[Expert@HostName:0\]# cvpnd\_admin policy_
>         
>         Notes:
>         
>         -   This might disconnect the current users
>         -   If you see that the debug is not being collected, then run _cvpnrestart_  
>             (This will restart the _cvpnd_ and _httpd_ processes - all existing Mobile Access connections will be disconnected)
>     6.  To view the status page, browse to:
>         
>         -   On Mobile Access gateways:
>             
>             _https://<IP\_of\_MAB\_GW>/sslvpn/Login/server-status_
>         -   On Connectra gateways:
>             
>             _https://<IP\_of\_MAB\_GW>/Login/server-status_
>     7.  Known Issue ID 00922556: Experiencing a gradual slowdown in Mobile Access Blade performance, and on the status page there are many processes with "G" status that cannot be actually found running on the Mobile Access Gateway.
>         
>         Refer to [sk92847 - Mobile Access portal is occasionally unresponsive](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk92847).
>     
>     **Enabling generation of Apache core dumps:**
>     
>     1.  Backup the current _$CVPNDIR/conf/httpd.conf_ file:
>         
>         _\[Expert@HostName:0\]# cp -v $CVPNDIR/conf/httpd.conf $CVPNDIR/conf/httpd.conf\_ORIGINAL_
>     2.  Edit the current _$CVPNDIR/conf/httpd.conf_ file:
>         
>         _\[Expert@HostName:0\]# vi $CVPNDIR/conf/httpd.conf_
>     3.  Add the following line:
>         
>         _CoreDumpDirectory /var/log/dump/usermode_
>     4.  Restart the Mobile Access:
>         
>         _\[Expert@HostName:0\]# cvpnrestart_
>         
>         Notes:
>         
>         -   This will restart the _cvpnd_ and _httpd_ processes - all existing Mobile Access connections will be disconnected
>     5.  If running a version older than R76, then run (refer to [sk53363](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk53363)):
>         
>         _\[Expert@HostName:0\]# um\_core enable_  
>         _\[Expert@HostName:0\]# reboot_
>     
>     **To test that core dump files are indeed created:**
>     
>     1.  Manually crash the _httpd_ process:
>         
>         (IMPORTANT: all existing Mobile Access connections will be disconnected)
>         
>         _\[Expert@HostName:0\]# kill -11 <httpd pid>_
>         
>     2.  Check if a core dump file was created for the _httpd_ process:
>         
>         _\[Expert@HostName:0\]# ls -l /var/log/dump/usermode/httpd\*_
>     3.  In addition, the following line should appear in the _$CVPNDIR/log/httpd.log_ file:
>         
>         _child pid <pid> exit signal Segmentation fault (11), possible coredump in /var/log/dump/usermode_
> -   #### Debugging the Gateway side - _cvpnd_ process
>     
>     **To start the debug:**
>     
>     1.  It is recommended to enable the _httpd_ debug every time you collect the _cvpnd_ debug.
>         
>         **Important:** The _cvpnrestart_ command will stop the _cvpnd_ debug. So you need to initiate the _httpd_ debug before the _cvpnd_ debug.
>     2.  Remove the rotated logs _$CVPNDIR/log/cvpnd.elg.\*_, if they exist:
>         
>         _\[Expert@HostName:0\]# rm -i $CVPNDIR/log/cvpnd.elg.\*_
>     3.  Empty the log _$CVPNDIR/log/cvpnd.elg_ file:
>         
>         _\[Expert@HostName:0\]# echo '' > $CVPNDIR/log/cvpnd.elg_
>         
>         **IMPORTANT: Do not delete this log file!**
>     4.  Start the debug:
>         
>         _\[Expert@HostName:0\]# cvpnd\_admin debug set TDERROR\_ALL\_ALL=5_
>     
>     **To stop the debug:**
>     
>     _\[Expert@HostName:0\]# cvpnd\_admin debug off_
> -   #### Debugging the Gateway side - _vpnd_ process
>     
>     The debug of _vpnd_ process is needed if there is a problem with SNX / SecureClient / EndpointConnect client.
>     
>     **To start the debug:**
>     
>     1.  Remove rotated logs _$FWDIR/log/vpnd.elg.\*_, if they exist:
>         
>         _\[Expert@HostName:0\]# rm -i $FWDIR/log/vpnd.elg.\*_
>     2.  Empty the log file _$FWDIR/log/vpnd.elg_:
>         
>         _\[Expert@HostName:0\]# echo '' > $FWDIR/log/vpnd.elg_
>         
>         **IMPORTANT: Do not delete this log file!**
>         
>     3.  Make sure the logs are not corrupted by the log rotation issue. Read [sk52120 (Log files can become corrupted when running debug of Check Point daemons on SecurePlatform / Gaia OS)](http://supportcontent.checkpoint.com/solutions?id=sk52120) about this issue.
>         
>     4.  Start the debug:
>         
>         -   For any other client except SNX:
>             
>             _\[Expert@HostName:0\]# vpn debug on ALL\_ALL=5_
>         -   For SNX client:
>             
>             _\[Expert@HostName:0\]# vpn debug on slim=5_
>     
>     **To stop the debug:**
>     
>     _\[Expert@HostName:0\]# vpn debug off_
> -   #### Debugging the Gateway side - _cvpnproc_ process
>     
>     The _cvpn_ process uses the _cvpnproc_ process for asynchronous jobs that may take a long time to complete. This process is responsible for sending SMS, e-mails and access to files via file share.
>     
>     **Currently, there is no easy way to collect the _cvpnproc_ debugs. The only option is to start it in debug mode.**
>     
>     **To start the debug:**
>     
>     1.  Stop Mobile Access services:
>         
>         _\[Expert@HostName:0\]# cvpnstop_
>     2.  Empty the log file _$CVPNDIR/log/cvpnproc.elg_:
>         
>         _\[Expert@HostName:0\]# echo '' > $CVPNDIR/log/cvpnproc.elg_
>         
>         **IMPORTANT: Do not delete this log file!**
>     3.  Make sure _procserver_ is down:
>         
>         _\[Expert@HostName:0\]# ps aux | grep proc_
>         
>         If _procserver_ is still running, then kill it manually:  
>         _\[Expert@HostName:0\]# kill -KILL <PID\_of\_procserver>_
>         
>     4.  Set the debug environment variable:
>         
>         _\[Expert@HostName:0\]# export TDERROR\_ALL\_ALL=5_
>     5.  Start the _procserver_ process in the background:
>         
>         _\[Expert@HostName:0\]# cvpnproc $CVPNDIR/log/cvpnproc.elg $CVPNDIR/conf/cvpnproc.C &_
>     6.  Start the Mobile Access services:
>         
>         _\[Expert@HostName:0\]# cvpnstart_
>     
>     **To stop the debug:**
>     
>     1.  Stop Mobile Access services:
>         
>         _\[Expert@HostName:0\]# cvpnstop_
>     2.  Kill the _procserver_:
>         
>         _\[Expert@HostName:0\]# ps aux | grep proc_  
>         _\[Expert@HostName:0\]# kill -KILL <PID\_of\_procserver>_
>     3.  Start the Mobile Access services:
>         
>         _\[Expert@HostName:0\]# cvpnstart_
> -   #### Debugging the Gateway side - _pinger_ process
>     
>     The _Pinger_ process was introduced in R75.40 and its main purpose is to reduce the number of _httpd_ processes performing ActiveSync. By default, all ActiveSync traffic in Mobile Access Blade is done via the _Pinger_ process.
>     
>     **If you suspect the problem is in _Pinger_ process, then try to disable it.  
>     Then, the regular _httpd_ processes will handle the ActiveSync.**  
>     Follow these steps:
>     
>     1.  Backup the current _$CVPNDIR/conf/httpd.conf_ file:
>         
>         _\[Expert@HostName:0\]# cp -v $CVPNDIR/conf/httpd.conf $CVPNDIR/conf/httpd.conf\_ORIGINAL_
>     2.  Edit the current _$CVPNDIR/conf/httpd.conf_ file:
>         
>         _\[Expert@HostName:0\]# vi $CVPNDIR/conf/httpd.conf_
>     3.  Remove the # sign in front of the following line:
>         
>         _\# CvpnUsePinger Off_
>     4.  Save the changes and exit from Vi editor.
>         
>     5.  Restart Mobile Access services:
>         
>         _\[Expert@HostName:0\]# cvpnrestart_
>         
>         (This will restart the _cvpnd_ and _httpd_ processes - all existing Mobile Access connections will be disconnected)
>     
>     **To start the debug:**
>     
>     **Important: Since Jumbo Hotfix Accumulator for R77.30 Takes 2xx and R80.10, there are two 'Pinger' processes running on the gateway.**
>     
>     One is simply called 'Pinger' and handles WebSocket and Outlook Anywhere traffic.
>     
>     The other is called 'IdlePinger' and handles OWA and ActiveSync 'push mail' functionality.
>     
>     All 'PingerAdmin' commands below remain the same for 'Pinger'.
>     
>     For 'IdlePinger', add the word 'idle' as the first argument of each 'PingerAdmin' command.
>     
>     **For example:** _PingerAdmin idle debug on_
>     
>     1.  _Verify that Pinger_ process is running:
>         
>         _\[Expert@HostName:0\]# ps aux | grep Pinger_
>     2.  Enable debug for relevant users:
>         
>         _\[Expert@HostName:0\]# PingerAdmin debug users <user1>,<user2>,<user3>_
>     3.  Set the debug level:
>         
>         _\[Expert@HostName:0\]# PingerAdmin debug set TDERROR\_ALL\_Pinger=3_  
>         or  
>         _\[Expert@HostName:0\]# PingerAdmin debug set TDERROR\_ALL\_ALL=5_
>     4.  Set the debug type:
>         
>         _\[Expert@HostName:0\]# PingerAdmin debug type All_
>     5.  Delete all files from _$CVPNDIR/log/trace\_log/_ directory:
>         
>         _\[Expert@HostName:0\]# rm -i $CVPNDIR/log/trace\_log/\*_
>         
>         **Note: Do not delete the directory itself!**
>     6.  Enable trace log:
>         
>         Warning: This might print passwords to local files! _\[Expert@HostName:0\]# PingerAdmin debug trace on_
>     7.  Empty the log file _$CVPNDIR/log/Pinger.log_:
>         
>         _\[Expert@HostName:0\]# echo '' > $CVPNDIR/log/Pinger.log_
>         
>         **IMPORTANT: Do not delete this log file!**
>     8.  Start the debug:
>         
>         _\[Expert@HostName:0\]# PingerAdmin debug on_
>     
>     **To stop the debug:**
>     
>     1.  Stop debug:
>         
>         _\[Expert@HostName:0\]# PingerAdmin debug off_
>     2.  Disable the trace log:
>         
>         _\[Expert@HostName:0\]# PingerAdmin debug trace off_
>     3.  Reset the debug:
>         
>         _\[Expert@HostName:0\]# PingerAdmin debug reset_
> 
> ### (2) Debugging MAB in Unified Policy Mode
> 
> **How to debug Authorization in the kernel - Rulebase matching**
> 
> **More comprehensive:**
> 
> _fw ctl debug -buf 16384; fw ctl debug -m UP + all; fw ctl kdebug -t -f >& /var/tmp/kernel\_debug.txt_
> 
> **Less comprehensive, including only MAB modules, without rulebase matching debugging:**
> 
> _fw ctl debug -buf 16384; fw ctl debug -m UP + mab info; fw ctl kdebug -t -f >& /var/tmp/kernel\_mab.txt_
> 
> **Stop debugging:**
> 
> _fw ctl debug 0_
> 
> **Important Note: Debugging MAB in Unified Policy Mode also requires debugging _cvpnd_ process.**
> 
> ### (3) Debugging the user side
> 
> -   #### Debugging the user side - _Problems with web application_
>     
>     1.  Install the Fiddler web debugger ([http://www.telerik.com/fiddler](http://www.telerik.com/fiddler))
>     2.  Make sure that you enabled _https_ capturing and decoding ([http://docs.telerik.com/fiddler/configure-fiddler/tasks/decrypthttps](http://docs.telerik.com/fiddler/configure-fiddler/tasks/decrypthttps))
>     3.  Make sure to empty the browser cache before starting the debug.
>     4.  Collect the same capture on a PC connected to the internal network (without Mobile Access Blade in the middle).
>     
>     Related solutions:
>     
>     -   [sk99053 (How to debug Mobile Access Web Applications)](http://supportcontent.checkpoint.com/solutions?id=sk99053)
> -   #### Debugging the user side - _Problems with Secure Workspace (SWS)_
>     
>     **To enable the SWS debug:**
>     
>     1.  Go to _Start_ menu - _Run..._ - paste the following command - click on OK:  
>         _"%WINDIR%\\system32\\rundll32.exe" sysdm.cpl,EditEnvironmentVariables_
>         
>         Alternatively:
>         
>         1.  Desktop - right-click on the "_My Computer_" icon - click on "_Properties_"
>         2.  Windows Vista/7/2012: In the left pane, click on "_Advanced system settings_".
>         3.  Go to "_Advanced_" tab.
>         4.  At the bottom, click on "_Environment Variables..._" button.
>     2.  In the "_System variables_" section, add a new variable with the name _ISWLOG_ and the desired value:
>         
>         <table><tbody><tr><td>Logged category</td><td>Value</td></tr><tr><td>Success</td><td>0 (most verbose)</td></tr><tr><td>Info</td><td>1</td></tr><tr><td>Warning</td><td>2</td></tr><tr><td>Error</td><td>3</td></tr><tr><td>Important</td><td>4</td></tr><tr><td>Dump</td><td>5 (least verbose)</td></tr></tbody></table>
>         
>     3.  Verify that the new environment variable was applied - run this command in Windows Command Prompt:
>         
>         _C:\\> set | findstr ISWLOG_
>         
>         Output should show "`ISWLOG=<integer_value>`"
>     4.  Reproduce the relevant issue.
>         
>     5.  The debug output file(s) will appear in _%Temp%\\IswTmp\\Logs\\_ directory.
>         
>     
>     **To turn off debug output:**
>     
>     1.  Remove the variable "_ISWLOG_" from the list of "System variables".
>         
>     2.  Verify that the environment variable was removed - run this command in Windows Command Prompt:
>         
>         _C:\\> set | findstr ISWLOG_
>         
>         Output should be empty
> -   #### Debugging the user side - _Problems with Native Applications_
>     
>     In order to fully debug an SNX session, debug output must be simultaneously enabled on the SNX client and Mobile Access Gateway before the issue is reproduced. The following are the instructions for enabled the debug for each side of the connection.
>     
>     **_On the Mobile Access Gateway_**
>     
>     1.  Start the debug of _vpnd_ process as described in the "Debugging the Gateway side - _vpnd_ process" section above.
>         
>     2.  Start the VPN kernel debug:
>         
>         _\[Expert@HostName:0\]# fw ctl debug 0_  
>         _\[Expert@HostName:0\]# fw ctl debug -buf 32000_  
>         _\[Expert@HostName:0\]# fw ctl debug -m fw + crypt_  
>         _\[Expert@HostName:0\]# fw ctl debug -m fw_  
>         _\[Expert@HostName:0\]# fw ctl debug -m VPN + tcpt_  
>         _\[Expert@HostName:0\]# fw ctl debug -m VPN_  
>         _\[Expert@HostName:0\]# fw ctl kdebug -T -f > /var/log/snx\_debug.txt_
>     
>     **_SNX client in Network Mode on Windows OS_**
>     
>     1.  Change the value of the following registry key to "5":
>         
>         HKEY\_CURRENT\_USER > Software > CheckPoint > SSL Network Extender > parameters > dbg level
>     2.  Change the value of the following registry key to "5":
>         
>         HKEY\_LOCAL\_MACHINE > System > ControlSet001 > Services > cpextender > parameters > dbg\_level
>     3.  Restart the SNX service by running the following commands in Windows Command Prompt:
>         
>         _net stop cpextender_  
>         _net start cpextender_
>     4.  Two debug output files will be created:
>         
>         -   _C:\\Program Files\\checkpoint\\SSL Network Extender\\slimsvc.log_
>         -   _%appdata%\\check point\\extender\\activex.log_
>     
>     **_SNX client in Application Mode on Windows OS_**
>     
>     1.  Go to _Start_ menu - _Run..._ - paste the following command - click on OK:  
>         _"%WINDIR%\\system32\\rundll32.exe" sysdm.cpl,EditEnvironmentVariables_
>         
>         Alternatively:
>         
>         1.  Desktop - right-click on the "_My Computer_" icon - click on "_Properties_"
>         2.  Windows Vista/7/2012: In the left pane, click on "_Advanced system settings_".
>         3.  Go to "_Advanced_" tab.
>         4.  At the bottom, click on "_Environment Variables..._" button.
>     2.  In the "_System variables_" section, add a new variable with the name _TDERROR\_ALL\_ALL_ and the value _5_.
>         
>     3.  Verify that the new environment variable was applied - run this command in Windows Command Prompt:
>         
>         _C:\\> set | findstr TDERROR\_ALL\_ALL_
>         
>         Output should show "`TDERROR_ALL_ALL=5`"
>     4.  Two debug output files will be created:
>         
>         -   _%TEMP%\\SNXAC\\stap.txt_
>         -   _%TEMP%\\SNXAC\\STALog.txt_
>     
>     **_SNX client in Network Mode on Linux OS_**
>     
>     1.  SNX Network Mode may be run from the command line in debug mode:
>         
>         _snx -s <server> -u <user\_name> -g_
>     2.  The debug output file will be created in _$HOMEDIR/snx.elg_
>     
>     **_SNX client in Network Mode on Mac OS X_**
>     
>     1.  In Terminal, create a file in the user's home directory named _.snxrc_:
>         
>         _touch ~/.snxrc_
>     2.  Add the line "_debug yes_" to the _~/.snxrc_ file:
>         
>         _echo 'debug yes' > ~/.snxrc_  
>         _cat ~/.snxrc_
>     3.  The debug output file will be created in _$HOMEDIR/snx.elg_
>         
>     
>     **_SNX client in Application Mode on Linux OS and Mac OS X_**
>     
>     1.  Create a file named _/tmp/stadebug_:
>         
>         _touch /tmp/stadebug_
>     2.  Two debug output files will be created:
>         
>         -   _/tmp/stalog.txt_
>         -   _/tmp/SNXAC/stap.elg_ (always created, regardless of the _/tmp/stadebug_ file)
> -   #### _Thin-client deployment mechanism (C-Shell)_
>     
>     C-Shell has a JavaScript component and a binary component that is either ActiveX or Java, depending on the client machine's environment. In order to debug each of the components, follow the instructions below:
>     
>     **In order to debug the JavaScript component**
>     
>     This is needed if ActivX or Java component is not launched correctly by the portal.
>     
>     1.  Backup the current _$CVPNDIR/phpincs/SNXController.php_ file:
>         
>         _\[Expert@HostName:0\]# cp -v $CVPNDIR/phpincs/SNXController.php $CVPNDIR/phpincs/SNXController.php\_ORIGINAL_
>     2.  Edit the current _$CVPNDIR/phpincs/SNXController.php_ file:
>         
>         _\[Expert@HostName:0\]# vi $CVPNDIR/phpincs/SNXController.php_
>     3.  Find the following line (approximately, line 162):
>         
>         _////////////////DEBUGGING UTILITY///////////////////_
>     4.  Change the _Function.DEBUG_ line:
>         
>         from:
>         
>         _Function.DEBUG=Function.**DEBUG\_MODE\_OFF**;_
>         
>         to:
>         
>         _Function.DEBUG=Function.**DEBUG\_MODE\_ON\_ALL**;_
>     5.  Save the changes and exit from Vi editor.
>         
>     
>     **In order to debug the ActiveX component**
>     
>     1.  Change the value of the following registry key to "5":
>         
>         HKEY\_CURRENT\_USER > Software > CheckPoint > SNX Components Shell > parameters > dbg\_level
>         
>         If _dbg\_level_ is missing, then create it (the type is "REG\_DWORD").
>     2.  The debug output file is _%temp%\\CShell\\SNXComponentsShell.log_
>         
>         If the debug file is missing, then make sure the following registry key exists:
>         
>         HKEY\_CURRENT\_USER > Software > CheckPoint > SNX Components Shell > parameters > dbg\_file
>         
>         Create it (the type is "REG\_SZ"), if needed, and set its value to _%temp%\\CShell\\SNXComponentsShell.log_.
>     
>     **In order to debug the Java component**
>     
>     Java is debugged according to the JVM installed on the client machine. Usually, the JVM is either Microsoft's or Oracle's.
>     
>     -   **For Microsoft's JVM:**  
>         From Internet Explorer's main menu, go to Tools > Options > Advanced > Microsoft VM, and check all the Java debugging related checkboxes.
>     -   **For Oracle's JVM:**  
>         Go to Start menu > Settings > Control Panel > Java > Advanced, and check all debugging related checkboxes (especially in Java Console and Debugging).
> 
> ### (4) Debugging Policy Installation
> 
> -   To debug the FWD process
>     
>     Refer to [sk86321 - How to debug FWD daemon](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk86321)
> -   To debug the CPD process
>     
>     Refer to [sk86320 - How to debug CPD daemon](https://supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk86320)