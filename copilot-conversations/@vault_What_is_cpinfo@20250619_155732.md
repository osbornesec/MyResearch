---
epoch: 1750366652086
modelKey: gemini-2.5-pro-preview-05-06|google


tags:
  - copilot-conversation

---

**user**: @vault What is cpinfo?
[Timestamp: 2025/06/19 15:57:32]

**ai**: The `cpinfo` command is a Check Point utility designed to collect comprehensive diagnostics data from a Check Point computer at the time of its execution. This data is crucial for troubleshooting and analysis, and it is mandatory to provide this information when contacting Check Point Support regarding an issue on a Check Point server.

Here's a more detailed breakdown based on the provided notes:

**Core Purpose and Functionality:**

*   **Diagnostics Data Collection:** `cpinfo` gathers a wide range of diagnostic information from Check Point systems. This includes system configuration, log files (excerpts or full, sometimes embedded in UUE format as seen in [[sk174043 - How to use the Connection Tracker]]), process information/status, network configuration details, product version information, hardware and software environment data, and system metrics. The collected data is typically packaged into a compressed archive format.
*   **Troubleshooting Support:** The primary purpose is to provide Check Point Support with the necessary data for effective issue analysis, root cause identification, technical support case documentation, and system health assessment.
*   **Time-Stamped Information:** It provides time-stamped diagnostic information, offering a snapshot of the system's state at the moment of execution.

**Usage Context and Requirements:**

*   **Mandatory for Support:** It is a mandatory tool when contacting Check Point Support for issues on Check Point servers, Security Gateways, or Domain Management Servers (as mentioned in [[sk114806 - ATRG Threat Emulation]]).
*   **Execution Context:** `cpinfo` can be run on various Check Point computers, including:
    *   Security Management Servers
    *   Security Gateways
    *   Multi-Domain Servers
    *   Cluster members
*   **Syntax:** The basic command is simply `cpinfo` as noted in [[checkpoint-cpinfo-diagnostics-collection-system]].

**Data Collection Scope (as detailed in [[checkpoint-cli-cpinfo]] and [[checkpoint-cpinfo-diagnostics-collection-system]]):**

*   System configuration information
*   Log file excerpts (or full logs, like Connection Tracker logs mentioned in [[sk174043 - How to use the Connection Tracker]])
*   Process status information
*   Network configuration details
*   Product version information (including VPN components as an alternative to `cvpn_ver` mentioned in [[checkpoint-cvpn-ver]])
*   Hardware and software environment data
*   CheckPoint-specific diagnostic information
*   System metrics

**Integration and Connections:**

*   It is part of the Check Point CLI operations, specifically under Configuration Management and Diagnostics and Troubleshooting domains (as seen in [[checkpoint-cli-operations-index-moc]] and [[checkpoint-cli-cpinfo]]).
*   It links to Check Point Support procedures, system troubleshooting methodologies, diagnostic data collection practices, and technical support workflows.
*   The collected data can be used for system health monitoring and log file analysis.
*   For more detailed information and usage guidance, Check Point knowledge base article **sk92739** is consistently referenced across multiple notes ([[checkpoint-cpinfo]], [[checkpoint-cpinfo-diagnostics-collection-system]], [[checkpoint-cli-cpinfo]], [[securitygatewayguide]], [[checkpoint-admin-foundation-cliguide-processed-2025-06-17]], [[multidomainguide]], [[securitymanagementguide]]).

In summary, `cpinfo` is an essential diagnostic utility for Check Point environments, facilitating the collection of extensive system information required by Check Point Support for effective troubleshooting and problem resolution. It is mentioned in several CLI guides and knowledge base articles as a fundamental tool.
[Timestamp: 2025/06/19 15:58:05]