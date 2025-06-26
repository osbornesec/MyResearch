<table id="Unique_ID_CLITable"><tbody><tr data-darkreader-inline-bgcolor=""><td>Command</td><td>Description</td></tr><tr><td><p><code>fwaccel help</code></p></td><td><p>Prints the general help message with available parameters.</p><p><em>Output</em>:</p><pre>Usage: fwaccel [-i &lt;ppak_id&gt;] off | on | ver | stat | conns | dbg &lt;...&gt; | help

Options:
   off                     - disable acceleration (for new connections and tunnels)
   on                      - enable  acceleration (for new connections and tunnels)
   load_balance &lt;command&gt;  - get/set AC load balancing (-h for usage info)
   ver                     - show accelerator/FW version
   stat [-a] [-t] [-v]     - show acceleration status
   stats &lt;options&gt;         - print the acceleration statistics
   conns &lt;options&gt;         - print the accelerator's connections table
   templates &lt;options&gt;     - print the accelerator's templates table
   identities &lt;options&gt;    - print the accelerator's identities table (Note: This flag is not supported in R81.10 and higher versions)
   revoked_ips &lt;options&gt;   - print the accelerator's revoked IPs table
   dbg &lt;options&gt;           - set debug flags
   dos                     - Interface to DOS mitigation techniques in SecureXL.
   synatk &lt;options&gt;        - configure/query SYN Defender
   ranges &lt;options&gt;        - print the range content 
   tab -t table_name       - print an accelerator table
   feature &lt;name&gt; {on|off} - enable or disable acceleration of a protocol/feature
   help                    - this help message
</pre></td></tr><tr><td><p><code>fwaccel ehelp</code></p></td><td><p>Prints the extended help message with available parameters.</p><p><em>Output</em>:</p><pre>Usage: fwaccel cfg &lt;...&gt;

Options:
   cfg &lt;options&gt;          - configure acceleration parameters
</pre></td></tr><tr><td><p><code>fwaccel &lt;<em>parameter</em>&gt; -h</code></p></td><td><p>Prints the specific help message for given &lt;<em>parameter</em>&gt;.</p></td></tr><tr><td><p><code>fwaccel on [-a] [-q]</code></p></td><td><p>Starts acceleration on-the-fly (if Performance Pack is installed).</p><ul><li>"<code>-q</code>" - Suppresses the output</li><li>"<code>-a</code>" - Start acceleration on all Virtual Systems</li></ul><p><strong>Important</strong> - In R80.10 and higher, it is not supported to disable SecureXL.</p><p>Returned strings:</p><ul><li><code>SecureXL device is enabled.</code></li><li><code>Failed to init SecureXL.</code></li><li><code>No license for SecureXL.</code></li><li><code>SecureXL is disabled by the firewall. Please try again later.</code></li><li><code>The installed SecureXL device is not compatible with the installed firewall (version mismatch).</code></li><li><code>SecureXL cannot be started while "flows" are active.</code></li><li><code>SecureXL is already started.</code></li><li><code>SecureXL will be started after a policy is loaded.</code></li><li><code>fwaccel: Failed to check FloodGate-1 status. Acceleration will not be started.</code></li><li><code>FW-1: SecureXL acceleration cannot be started while QoS is running in express mode.<br>Please disable FloodGate-1 express mode or SecureXL.</code></li><li><code>FW-1: SecureXL acceleration cannot be started while QoS is running with citrix printing rule.<br>Please remove the citrix printing rule to enable SecureXL.</code></li><li><code>FW-1: SecureXL acceleration cannot be started while QoS is running with UAS rule.<br>Please remove the UAS rule to enable SecureXL.</code></li><li><code>FW-1: SecureXL acceleration cannot be started while QoS is running.<br>Please remove the QoS blade to enable SecureXL.</code></li><li><code>Failed to enable SecureXL device</code></li><li><code>fwaccel_on: failed to set process context <em>&lt;VSID&gt;</em></code></li></ul></td></tr><tr><td><p><code>fwaccel off [-a] [-q]</code></p></td><td><p>Stops acceleration on-the-fly.</p><ul><li>"<code>-q</code>" - Suppresses the output</li><li>"<code>-a</code>" - Stop acceleration on all Virtual Systems</li></ul><p><strong>Important</strong> - In R80.10 and higher, it is not supported to disable SecureXL.</p><p>Returned strings:</p><ul><li><code>SecureXL device disabled</code></li><li><code>SecureXL device is not active</code></li><li><code>Failed to disable SecureXL device</code></li><li><code>fwaccel_on: failed to set process context <em>&lt;VSID&gt;</em></code></li></ul></td></tr><tr><td><p><code>fwaccel ver</code></p></td><td><p>Shows SecureXL FWAccel and FireWall version.</p><p><em>Example</em>:</p><pre>Firewall version: R80.20 - Build 004
Acceleration Device: Performance Pack 
Accelerator Version 2.1
Firewall API version: 3.0NG (19/11/2015)
Accelerator API version: 3.0NG (19/11/2015)
</pre></td></tr><tr><td><p><code>fwaccel stat [-a]</code></p></td><td><p>Shows the SecureXL status.</p><ul><li>"<code>-a</code>" - Show SecureXL status for all Virtual Systems</li></ul><p><em>Examples</em>:</p><blockquote><dl><dt>Gateway mode:</dt><dd><pre>Accelerator Status : on
Accept Templates   : enabled
Drop Templates     : disabled
NAT Templates      : disabled by user
</pre></dd><dt>VSX mode:</dt><dd><pre>Virtual Device ID: 0
Accelerator Status : off

Virtual Device ID: 1
Accelerator Status : on
Accept Templates   : enabled
Drop Templates     : disabled
NAT Templates      : disabled by user

Virtual Device ID: 2
Accelerator Status : on
Accept Templates   : enabled
Drop Templates     : disabled
NAT Templates      : disabled by user

Virtual Device ID: 4
Accelerator Status : on
Accept Templates   : enabled
Drop Templates     : disabled
NAT Templates      : disabled by user
</pre></dd></dl></blockquote><p>R80.20 and higher:</p><pre>+-----------------------------------------------------------------------+
|Id|Name     |Status     |Interfaces        |Features                    |
+------------------------------------------------------------------------+
|0 |SND      |enabled    |eth1,Mgmt         |Acceleration,Cryptography   |
|  |         |           |                  |Crypto: Tunnel,UDPEncap,MD5,|
|  |         |           |                  |SHA1,NULL,3DES,DES,AES-128, |
|  |         |           |                  |AES-256,ESP,LinkSelection,  |
|  |         |           |                  |DynamicVPN,NatTraversal,    |
|  |         |           |                  |AES-XCBC,SHA256             |
+------------------------------------------------------------------------+

Accept Templates : enabled
Drop Templates   : disabled
NAT Templates    : enabled</pre><p>Returned strings:</p><ul><li><p>Accelerator Status:</p><ul><li><pre>Accelerator Status : on
</pre></li><li><pre>Accelerator Status : off
</pre></li><li><pre>Accelerator Status : disabled by Firewall
</pre></li><li><pre>Accelerator Status : waiting for policy load
</pre></li><li><pre>Accelerator Status : no license for SecureXL
</pre></li></ul></li><li><p>Accept Templates:</p><ul><li><pre>Accept Templates   : enabled
</pre></li><li><pre>Accept Templates   : not supported by the SecureXL device
</pre></li><li><pre>Accept Templates   : disabled by user
</pre></li><li><pre>Accept Templates   : disabled by Firewall
</pre><p><em>Additional information</em>:</p><ul type="circle"><li><p>In R80.10 and higher:</p><pre>Accept Templates   : disabled by Firewall
                     Layer &lt;Name_of_Layer&gt; disables template offloads from rule #&lt;N&gt;
                     Throughput acceleration still enabled.
</pre></li><li><p>In R77.30 and lower:</p><pre>Accept Templates : disabled by Firewall
                   disabled from rule #&lt;N&gt;
</pre></li></ul></li></ul></li><li><p>Drop Templates (refer to <a href="https://support.checkpoint.com/results/sk/sk66402" target="_blank" rel="noopener">sk66402</a>):</p><ul><li><pre>Drop Templates     : enabled
</pre></li><li><pre>Drop Templates     : disabled
</pre></li><li><pre>Drop Templates     : not supported by the SecureXL device
</pre></li><li><pre>Drop Templates     : disabled by user
</pre></li><li><pre>Drop Templates     : disabled by Firewall
</pre><p><em>Additional information</em>:</p><ul type="circle"><li><p>In R80.10 and higher:</p><pre>Drop Templates     : disabled by Firewall
                     Layer &lt;Name_of_Layer&gt; disables template offloads from rule #&lt;N&gt;
                     Throughput acceleration still enabled.
</pre></li><li><p>In R77.30 and lower:</p><pre>Drop Templates     : disabled by Firewall
                     disabled from rule #&lt;N&gt;
</pre></li></ul></li></ul></li><li><p>NAT Templates (refer to <a href="https://support.checkpoint.com/results/sk/sk71200" target="_blank" rel="noopener">sk71200</a>):</p><ul><li><pre>NAT Templates      : enabled
</pre></li><li><pre>NAT Templates      : not supported by the SecureXL device
</pre></li><li><pre>NAT Templates      : disabled by user
</pre></li><li><pre>NAT Templates      : disabled by Firewall
</pre><p><em>Additional information</em>:</p><ul type="circle"><li><p>In R80.10 and higher:</p><pre>NAT Templates      : disabled by Firewall
                     Layer &lt;Name_of_Layer&gt; disables template offloads from rule #&lt;N&gt;
                     Throughput acceleration still enabled.
</pre></li><li><p>In R77.30 and lower:</p><pre>NAT Templates      : disabled by Firewall
                     disabled from rule #&lt;N&gt;
</pre></li></ul></li></ul></li><li><p>NMR Templates (refer to <a href="https://support.checkpoint.com/results/sk/sk117755" target="_blank" rel="noopener">sk117755</a>):</p><ul><li><pre>NMR Templates      : enabled
</pre></li><li><pre>NMR Templates      : disabled
</pre></li></ul></li><li><p>NMT Templates (refer to <a href="https://support.checkpoint.com/results/sk/sk117755" target="_blank" rel="noopener">sk117755</a>):</p><ul><li><pre>NMT Templates      : enabled
</pre></li><li><pre>NMT Templates      : disabled
</pre></li></ul></li></ul></td></tr><tr><td><p><code>fwaccel stats &lt;<em>options</em>&gt;</code></p></td><td><p>Shows all acceleration statistics (output is divided into relevant sections).</p><p><em>Example</em>:</p><pre>Name                             Value         Name                          Value          
----------------------------  ------------  ----------------------------  ------------

Accelerated Path
--------------------------------------------------------------------------------------
accel packets                            0    accel bytes                              0
outbound packets                         0    outbound bytes                           0
conns created                            0    conns deleted                            0
C total conns                            0    C TCP conns                              0
C non TCP conns                          0    nat conns                                0
dropped packets                          0    dropped bytes                            0
fragments received                       0    fragments transmit                       0
fragments dropped                        0    fragments expired                        0
IP options stripped                      0    IP options restored                      0
IP options dropped                       5    corrs created                            0
corrs deleted                            0    C corrections                            0
corrected packets                        0    corrected bytes                          0

Accelerated VPN Path
--------------------------------------------------------------------------------------
C crypt conns                            0    enc bytes                                0
dec bytes                                0    ESP enc pkts                             0
ESP enc err                              0    ESP dec pkts                             0
ESP dec err                              0    ESP other err                            0
espudp enc pkts                          0    espudp enc err                           0
espudp dec pkts                          0    espudp dec err                           0
espudp other err                         0    

Medium Streaming Path
--------------------------------------------------------------------------------------
CPASXL packets                           0    PSLXL packets                            0
CPASXL async packets                     0    PSLXL async packets                      0
CPASXL bytes                             0    PSLXL bytes                              0
C CPASXL conns                           0    C PSLXL conns                            0
CPASXL conns created                     0    PSLXL conns created                      0
PXL FF conns                             0    PXL FF packets                           0
PXL FF bytes                             0    PXL FF acks                              0
PXL no conn drops                        0    

Inline Streaming Path
--------------------------------------------------------------------------------------
PSL Inline packets                       0    PSL Inline bytes                         0
CPAS Inline packets                      0    CPAS Inline bytes                        0

Buffer Path
--------------------------------------------------------------------------------------
Buffer path buffers                      0    Buffer path bytes                        0

TLS PARSER
--------------------------------------------------------------------------------------
RECORD INFO                              0    

TLS DECRYPT
--------------------------------------------------------------------------------------
TLS INSPECTION                           0    TLS HANDSHAKE                            0
TLS RECORD LAYER                         0    TLS CRYPTO                               0

HTTP DISP
--------------------------------------------------------------------------------------
ACTIVATE WS MAIN                         0    EXEC NO HTTP CMI CONTEXT                 0

WS LITE
--------------------------------------------------------------------------------------
WS TX COMPLETED                          0    WS FORWARD TO MAIN                       0
WS NOTIFY TIMEOUT                        0    WS HANDLE EVENT                          0
WS CHUNKED ERROR                         0    WS GZIP EVENT                            0
WS ADD MAC HEADER                        0    WS IS STICKY ACTIVE                      0
WS TIER1 JOB ERROR                       0    WS TIER1 HAS MATCHES                     0
CML MATCHES                              0    TOTAL UPLOADED JOBS                      0
TOTAL JOBS                               0    

ADVP
--------------------------------------------------------------------------------------
ADVP FORW TO MAIN                        0    ADVP HOLD TIMEOUT                        0

QoS Paths
--------------------------------------------------------------------------------------
QoS General Information:
------------------------
Total QoS Conns                          0    QoS Classify Conns                       0
QoS Classify flow                        0    Reclassify QoS policy                    0

FireWall QoS Path:
------------------
Enqueued IN packets                      0    Enqueued OUT packets                     0
Dequeued IN packets                      0    Dequeued OUT packets                     0
Enqueued IN bytes                        0    Enqueued OUT bytes                       0
Dequeued IN bytes                        0    Dequeued OUT bytes                       0

Accelerated QoS Path:
---------------------
Enqueued IN packets                      0    Enqueued OUT packets                     0
Dequeued IN packets                      0    Dequeued OUT packets                     0
Enqueued IN bytes                        0    Enqueued OUT bytes                       0
Dequeued IN bytes                        0    Dequeued OUT bytes                       0

Firewall Path
--------------------------------------------------------------------------------------
F2F packets                         908718    F2F bytes                         94872934
TCP violations                           0    F2V conn match pkts                      0
F2V packets                              0    F2V bytes                                0

GTP
--------------------------------------------------------------------------------------
gtp tunnels created                      0    gtp tunnels                              0
gtp accel pkts                           0    gtp f2f pkts                             0
gtp spoofed pkts                         0    gtp in gtp pkts                          0
gtp signaling pkts                       0    gtp tcpopt pkts                          0
gtp apn err pkts                         0    

General
--------------------------------------------------------------------------------------
memory used                           1752    C tcp handshake conns                    0
C tcp established conns                  0    C tcp closed conns                       0
C tcp pxl handshake conns                0    C tcp pxl established conns              0
C tcp pxl closed conns                   0    DNS DoR stats                            0

(*) Statistics marked with C refer to current value, others refer to total value
</pre></td></tr><tr><td><p><code>fwaccel stats -h</code></p></td><td><p>Shows the help message with available flags for '<code>stats</code>' parameter.</p><p><em>Output</em>:</p><pre>Usage: fwaccel stats &lt;options&gt;

Options:
   -s                      - print only statistics summary
   -d                      - drop from device statistics
   -n                      - NAC statistics
   -p                      - print SXL violations (f2f packets) statistics
   -l                      - print statistics in legacy mode
   -r                      - reset statistics
   -m                      - print multicast traffic statistics
   -q                      - notifications sent to the FW
   -c                      - print cluster correction statistics
   -x                      - print PXL statistics
   -o                      - Reorder I/S
   -t                      - Traffic distribution
   -u                      - Callqueue
   -k                      - PPAK Network per cpu
   -h                      - this help message
</pre></td></tr><tr><td><p><code>fwaccel stats -s</code></p></td><td><p>Shows the summary of all acceleration statistics.</p><p><em>Example</em>:</p><pre>Accelerated conns/Total conns : 0/0 (0%)
Accelerated pkts/Total pkts   : 0/910096 (0%)
F2Fed pkts/Total pkts         : 910096/910096 (100%)
F2V pkts/Total pkts           : 0/910096 (0%)
CPASXL pkts/Total pkts        : 0/910096 (0%)
PSLXL pkts/Total pkts         : 0/910096 (0%)
CPAS inline pkts/Total pkts   : 0/910096 (0%)
PSL inline pkts/Total pkts    : 0/910096 (0%)
QOS inbound pkts/Total pkts   : 0/910096 (0%)
QOS outbound pkts/Total pkts  : 0/910096 (0%)
Corrected pkts/Total pkts     : 0/910096 (0%)
</pre></td></tr><tr><td><p><code>fwaccel stats -d</code></p></td><td><p>Shows the acceleration statistics for dropped packets.</p><p><em>Example</em>:</p><pre>Reason                Value              Reason                Value          
--------------------  ---------------    --------------------  ---------------
General                             0    CPASXL Decision                     0
PSLXL Decision                      0    Clear Packet on VPN                 0
Encryption Failed                   0    Drop Template                       0
Decryption Failed                   0    Interface Down                      0
Cluster Error                       0    XMT Error                           0
Anti-Spoofing                       0    Local Spoofing                      0
Sanity Error                        0    Monitored Spoofed                   0
QXL Decision                        0    C2S Violation                       0
S2C Violation                       0    Loop Prevention                     0
DOS Fragments                       0    DOS IP Options                      0
DOS Blacklists                      0    DOS Penalty Box                     0
DOS Rate Limiting                   0    Syn Attack                          0
Reorder                             0    Virt Defrag Timeout                 0
Invalid Interface                   0    Null Routing info                   0
Unable to get out ifn               0    Resource exhausted                  0
Conn not found                      0    Failed to del corr                  0
Corr instead of conn                0    Del zombie conn fail                0
FW UUID no match                    0    Offload mismatch                    0
SIM init failed                     0    Null stream init info               0
Unable to get CGNAT                 0    Null stream app info                0
Failed get init info                0    SIM add stream failed               0
Collid conn not found               0    Del collid conn fail                0
Add conn after collid               0    SEQ valid                           0
Enqueue QoS failed                  0    AUX CI null                         0
Link dead                           0    VPN packet too big                  0
NAT64 failed                        0    NAT46 failed                        0
Packet &gt; MTU                        0    NAC validation                      0
TCP state violation                 0    Enforce packet                      0
GTP check packet                    0    Bridge route error                  0
Route ifn changed                   0    IP forwarding                       0
Copy MACS failed                    0    Fragments Drops                     0
Send Notification                   0    Conn not found RST                  0
Forward to PPAK fail                0    Cluster forward fail                0
F2F before encrypt                  0    Forward dst encrypt                 0
Correction I/S fail                 0    Do inbound F2F                      0
Packet UDP failed                   0    F2F not allowed                     0
Do routing                          0    Fanout won't F2F                    0
SCTP validation fail                0    SCTP not data                       0
</pre></td></tr><tr><td><p><code>fwaccel stats -n</code></p></td><td><p>Shows the acceleration statistics for Network Access Control (NAC).</p><p>Note: Refer to the <a href="https://support.checkpoint.com/product/436#f-commonsource=C.%20Documentation" target="_blank" rel="noopener">Identity Awareness Administration Guide</a> for your version.</p><p><em>Example</em>:</p><pre>Name                  Value              Name                  Value          
--------------------  ---------------    --------------------  ---------------
NAC packets                         0    NAC bytes                           0
NAC connections                     0  complience failure                  0
</pre></td></tr><tr><td><p><code>fwaccel stats -p</code></p></td><td><p>Shows the acceleration statistics for SecureXL violations (F2F packets).</p><p>This is the list of violation counters and their descriptions:</p><ul><li><code>pkt has IP options</code> - Packets with IP options are always F2F</li><li><code>ICMP miss conn</code> - ICMP packets, for which no ICMP connection was found in SecureXL tables</li><li><code>TCP-SYN miss conn</code> - TCP-SYN packets, for which no TCP connection was found in SecureXL tables</li><li><code>TCP-other miss conn</code> - TCP packets (other than TCP-SYN), for which no TCP connection was found in SecureXL tables</li><li><code>UDP miss conn</code> - UDP packets, for which no UDP connection was found in SecureXL tables</li><li><code>other miss conn</code> - Other packets (non-TCP/non-UDP/non-ICMP), for which no connection was found in SecureXL tables</li><li><code>VPN returned F2F</code> - Post VPN encrypt / Post VPN decrypt decision was to F2F these packets</li><li><code>uni-directional viol</code> - These packets "seen" in opposite direction (as recorded in the kernel tables) to their corresponding connections that were offloaded by FireWall as uni-directional</li><li><code>possible spoof viol</code> - These packets failed Anti-Spoofing checks</li><li><code>TCP state viol</code> - These packets failed TCP state validation checks (includes Sequence validations)</li><li><code>out if not def/accl</code> - These packets passed through outgoing interface that is marked as non-accelerated (see <a href="https://support.checkpoint.com/results/sk/sk79880" target="_blank" rel="noopener">sk79880</a>)</li><li><code>bridge, src=dst</code> - These packets passed the same interface (in Bridge mode, inbound / outbound interfaces are the same)</li><li><code>routing decision err</code> - ARP was not resolved for these packets</li><li><code>sanity checks failed</code> - VPN post-decryption sanity checks failed for these packets</li><li><code>temp conn expired</code> - These packets arrives on Temp connection, which has lived past TTL, or packet count</li><li><code>partial conn</code> - These were inbound packets matched to partial connections</li><li><code>PXL returned F2F</code> - These inbound packets were F2F based on PXL decision</li><li><code>cluster forward</code> - These packets were Forwarded to this cluster member over Sync interface from peer members (see "Packet Forwarding" in <a href="https://support.checkpoint.com/results/sk/sk93306" target="_blank" rel="noopener">sk93306</a>)</li></ul><p><em>Example</em>:</p><pre>F2F packets:
--------------
Violation             Packets            Violation             Packets        
--------------------  ---------------    --------------------  ---------------
pkt has IP options                  0    ICMP miss conn                      0
TCP-SYN miss conn                  11    TCP-other miss conn             23567
UDP miss conn                 3572453    other miss conn                     0
VPN returned F2F                    0    uni-directional viol                0
possible spoof viol                 0    TCP state viol                      0
out if not def/accl                 0    bridge, src=dst                     0
routing decision err                0    sanity checks failed                0
fwd to non-pivot                    0    broadcast/multicast                 0
cluster message                     0    cluster forward                     0
chain forwarding                    0    F2V conn match pkts                 0
general reason                      0    route changes                       0
</pre></td></tr><tr><td><p><code>fwaccel stats -l</code></p></td><td><p>Shows all acceleration statistics in Legacy mode (output is <strong>not</strong> divided into sections).</p><p><em>Example</em>:</p><pre>    Name                          Value         Name                          Value          
----------------------------  ------------  ----------------------------  ------------
-                                       0    accel packets                           0
accel bytes                             0    outbound packets                        0
outbound bytes                          0    conns created                           0
conns deleted                           0    C total conns                           0
C TCP conns                             0    C non TCP conns                         0
nat conns                               0    dropped packets                         0
dropped bytes                           0    fragments received                      0
fragments transmit                      0    fragments dropped                       0
fragments expired                       0    IP options stripped                     0
IP options restored                     0    IP options dropped                      5
corrs created                           0    corrs deleted                           0
C corrections                           0    corrected packets                       0
corrected bytes                         0    C crypt conns                           0
enc bytes                               0    dec bytes                               0
ESP enc pkts                            0    ESP enc err                             0
ESP dec pkts                            0    ESP dec err                             0
ESP other err                           0    espudp enc pkts                         0
espudp enc err                          0    espudp dec pkts                         0
espudp dec err                          0    espudp other err                        0
acct update interval                 3600    CPASXL packets                          0
PSLXL packets                           0    CPASXL async packets                    0
PSLXL async packets                     0    CPASXL bytes                            0
PSLXL bytes                             0    C CPASXL conns                          0
C PSLXL conns                           0    CPASXL conns created                    0
PSLXL conns created                     0    PXL FF conns                            0
PXL FF packets                          0    PXL FF bytes                            0
PXL FF acks                             0    PXL no conn drops                       0
PSL Inline packets                      0    PSL Inline bytes                        0
CPAS Inline packets                     0    CPAS Inline bytes                       0
Buffer path buffers                     0    Buffer path bytes                       0
RECORD INFO                             0    TLS INSPECTION                          0
TLS HANDSHAKE                           0    TLS RECORD LAYER                        0
TLS CRYPTO                              0    ACTIVATE WS MAIN                        0
EXEC NO HTTP CMI CONTEXT                0    WS TX COMPLETED                         0
WS FORWARD TO MAIN                      0    WS NOTIFY TIMEOUT                       0
WS HANDLE EVENT                         0    WS CHUNKED ERROR                        0
WS GZIP EVENT                           0    WS ADD MAC HEADER                       0
WS IS STICKY ACTIVE                     0    WS TIER1 JOB ERROR                      0
WS TIER1 HAS MATCHES                    0    CML MATCHES                             0
TOTAL UPLOADED JOBS                     0    TOTAL JOBS                              0
ADVP FORW TO MAIN                       0    ADVP HOLD TIMEOUT                       0
Total QoS Conns                         0    QoS Classify Conns                      0
QoS Classify flow                       0    Reclassify QoS policy                   0
Enqueued IN packets                     0    Enqueued OUT packets                    0
Dequeued IN packets                     0    Dequeued OUT packets                    0
Enqueued IN bytes                       0    Enqueued OUT bytes                      0
Dequeued IN bytes                       0    Dequeued OUT bytes                      0
Enqueued IN packets                     0    Enqueued OUT packets                    0
Dequeued IN packets                     0    Dequeued OUT packets                    0
Enqueued IN bytes                       0    Enqueued OUT bytes                      0
Dequeued IN bytes                       0    Dequeued OUT bytes                      0
F2F packets                       1071330    F2F bytes                       125339139
TCP violations                          0    F2V conn match pkts                     0
F2V packets                             0    F2V bytes                               0
gtp tunnels created                     0    gtp tunnels                             0
gtp accel pkts                          0    gtp f2f pkts                            0
gtp spoofed pkts                        0    gtp in gtp pkts                         0
gtp signaling pkts                      0    gtp tcpopt pkts                         0
gtp apn err pkts                        0    memory used                          1752
C tcp handshake conns                   0    C tcp established conns                 0
C tcp closed conns                      0    C tcp pxl handshake conns               0
C tcp pxl established conns             0    C tcp pxl closed conns                  0
DNS DoR stats                           0    

(*) Statistics marked with C refer to current value, others refer to total value  

</pre></td></tr><tr><td><p><code>fwaccel stats -m</code></p></td><td><p>Shows the acceleration statistics for multicast traffic.</p><p><em>Example</em>:</p><pre>Name                  Value              Name                  Value          
--------------------  ---------------    --------------------  ---------------
in packets                      20066    out packets                         0
if restricted                       0    conns with down if                  0
f2f packets                         0    f2f bytes                           0
dropped packets                     0    dropped bytes                       0
accel packets                       0    accel bytes                         0
mcast conns                         3    
</pre></td></tr><tr><td><p><code>fwaccel stats -q</code></p></td><td><p>Shows the notifications sent to the FireWall (in R80.10 and higher).</p><p><em>Example</em>:</p><pre>Notification           Packets           Notification           Packets
---------------------  --------------    ---------------------  --------------
ntSAAboutToExpire                   0    ntSAExpired                         0
ntMSPIError                         0    ntNoInboundSA                       0
ntNoOutboundSA                      0    ntDataIntegrityFailed               0
ntPossibleReplay                    0    ntReplay                            0
ntNextProtocolError                 0    ntCPIError                          0
ntClearTextPacket                   0    ntFragmentation                     0
ntUpdateUdpEncTable                 0    ntSASync                            0
ntReplayOutOfWindow                 0    ntVPNTrafficReport                  0
ntConnDeleted                       0    ntConnUpdate                        0
ntPacketDropped                     0    ntSendLog                           0
ntRefreshGTPTunnel                  0    ntMcastDrop                         0
ntAccounting                        0    ntAsyncIndex                        0
ntACkReordering                     0    ntAccelAckInfo                      0
ntMonitorPacket                     0    ntPacketCapture                     0
ntCpasPacketCapture                 0    ntPSLGlueUpdateReject               0
ntSeqVerifyDrop                     0    ntPacketForwardBefore               0
ntICMPMessage                       0    ntQoSReclassifyPacket               0
ntQoSResumePacket                   0    ntVPNEncHaLinkFailure               0
ntVPNEncLsLinkFailure               0    ntVPNEncRouteChange                 0
ntVPNDecVerRouteChang               0    ntVPNDecRouteChange                 0
ntMuxSimToFw                        0    ntPSLEventLog                       0
ntSendCPHWDStats               894547    ntPacketTaggingViolat               0
ntDosNotify                         0    ntSynatkNotify                      0
ntSynatkStats                       0    ntQoSEventLog                       0
ntPrintGetParam                     0    ntMuxSendLog                        0
</pre></td></tr><tr><td><p><code>fwaccel stats -r</code></p></td><td><p>Resets all counters for acceleration statistics.</p></td></tr><tr><td><p><code>fwaccel conns &lt;<em>options</em>&gt;</code></p></td><td><p>Shows the SecureXL Connections Table ('<code>cphwd_db</code>').</p><p>Note: Depending on the number of concurrent connections, might consume memory and CPU at very high level (e.g., see <a href="https://support.checkpoint.com/results/sk/sk118716" target="_blank" rel="noopener">sk118716</a>).</p><p>Returned strings:</p><ul><li><code>The SecureXL connections table is empty</code></li><li><code>Failed to read the SecureXL connections table</code></li><li><code>There are <em>VALUE</em> connections in SecureXL connections table<br>...<br>Total number of connections: <em>VALUE</em></code></li></ul><p><em>Examples</em>:</p><ul><li><p>In versions R81 and higher:</p><pre>Source   SPort Destination DPort PR Flags           TCP state   C2S i/f S2C i/f Inst PPAK ID Policy ID  CPU Total Pkts  Total Bytes Last Seen  Duration   TTL/Timeout
-------- ----- ----------- ----- -- --------------- ----------- ------- ------- ---- ------- ---------- --- ----------- ----------- ---------- ---------- -----------
1.1.1.11 46214 2.2.2.11     5000  6 ................Established 2/3     3/2     0     0      921968612   0   15         1.07KB      5s         7s         3595/3600 
2.2.2.11  5000 1.1.1.11    46214  6 ..........L.....Established 2/3     3/2     0     0      921968612   0   15         1.07KB      5s         7s         3595/3600 

Idx Interface
--- ---------
0   lo
1   eth0
2   eth1
3   eth2

Total number of connections: 1
Total number of links: 1 </pre><ul><li>New columns added to the '<em>fwaccel conns</em>' output:<ul><li><code>Last seen</code> - time passed since last packet on this connection</li><li><code>Duration</code> - time passed since the connection was created</li><li><code>Total Bytes</code> - total bytes passed on the connection since it was created</li><li><code>Total Pkts</code> - total packets passed on the connection since it was created</li></ul></li><li><code>TTL/Timeout</code> - now shows the real timeout (in versions R80.40 and lower, it shows the timeout of the entry on the connection table and not real session timeout)</li><li>Available in these versions:<ul><li><a href="https://support.checkpoint.com/results/sk/sk166715" target="_blank" rel="noopener">Check Point R81</a> and higher</li><li><a href="https://support.checkpoint.com/results/sk/sk165456" target="_blank" rel="noopener">Jumbo Hotfix Accumulator for R80.40</a> - Take 100 and higher</li><li><a href="https://support.checkpoint.com/results/sk/sk153152" target="_blank" rel="noopener">Jumbo Hotfix Accumulator for R80.30</a> - Take 232&nbsp;and higher</li><li><a href="https://support.checkpoint.com/results/sk/sk137592" target="_blank" rel="noopener">Jumbo Hotfix Accumulator for R80.20</a> - Take 190&nbsp;and higher</li></ul></li></ul></li><li><p>In versions R80.20 - R80.40:</p><pre>Source    SPort Destination DPort PR  Flags           TCP state    C2S i/f S2C i/f Inst PPAK ID Policy ID  CPU Held Pkts TTL/Timeout
------    ----- ----------- ----- --- --------------- ------------ ------- ------- ---- ------- --------- ---- --------- -----------
2.2.2.10  5000  1.1.1.10    48744  6  ...A..S..L..... Established    2/3    3/2     2     0     1193219296  0      0       510/512
1.1.1.10 48744  2.2.2.10     5000  6  ...A..S........ Established    2/3    3/2     2     0     1193219296  0      0       510/512

Idx Interface
--- ---------
0 lo
1 eth0
2 eth1
3 eth2
4 eth3

Total number of connections: 1
Total number of links: 1 </pre></li></ul></td></tr><tr><td><p><code>fwaccel conns -h</code></p></td><td><p>Shows the help message with available flags for '<code>conns</code>' parameter.</p><p><em>Output</em>:</p><pre>Usage: fwaccel conns &lt;options&gt;

Options:
   -m &lt;max entries&gt;        - max number of entries to print
   -f &lt;filter&gt;             - print only entries matching the filter
   -s                      - print only number of connections
   -h                      - this help message

Filter (one or more of the below flags):
   U/u                     - unidirectional/bidirectional
   N/n                     - entries with/without NAT
   A/a                     - accounted/not accounted
   C/c                     - encrypted/not encrypted
   S/s                     - pxl enabled/disabled
   Q/q                     - qxl enabled/disabled
   L/l                      - Link/not link
   V/v                     - forward to VM - (Accelerated packets which are forwarded to the Firewall for inbound processing, and afterwards return back to SecureXL)
</pre></td></tr><tr><td><p><code>fwaccel conns -s</code></p></td><td><p>Shows the summary of SecureXL Connections Table (number of connections).</p><p>Note: Depending on the number of concurrent connections, might consume memory at very high level.</p><p><em>Example</em>:</p><pre>There are 56 connections in SecureXL connections table
</pre></td></tr><tr><td><p><code>fwaccel conns -m &lt;<em>max_entries</em>&gt;<em></em></code></p></td><td><p>Shows the SecureXL Connections Table limited to the number of <em>max_entries</em>.</p></td></tr><tr><td><p><code>fwaccel conns -f &lt;<em>filter</em>&gt;</code></p></td><td><p>Shows the SecureXL Connections Table entries based on &lt;<em>filter</em>&gt; (run '<code>fwaccel conns -h</code>').</p><p>The filtering flag is a single letter (either capital, or small).</p></td></tr><tr><td><p><code>fwaccel templates &lt;<em>options</em>&gt;</code></p></td><td><p>Shows the SecureXL Connections Templates ('<code>cphwd_tmpl</code>', id 8111).</p><p>Note: Depending on the number of current templates, might consume memory at very high level.</p><p>Returned strings:</p><ul><li><code>The SecureXL templates table is empty</code></li><li><code>Failed to read the SecureXL templates table</code></li><li><code>There are <em>VALUE</em> templates in SecureXL templates table<br>...<br>Total number of templates: <em>VALUE</em></code></li></ul></td></tr><tr><td><p><code>fwaccel templates -h</code></p></td><td><p>Shows the help message with available flags for '<code>templates</code>' parameter.</p><p><em>Output in R80.20 and higher:</em></p><pre>Usage: fwaccel templates &lt;options&gt;

Options:
   -m &lt;max entries&gt;        - max number of entries to print
   -s                      - print only the number of offloaded templates
   -S                      - prints statistics
   -d                      - prints drop templates
   -h                      - this help message

Accept templates flags (one or more of the below flags):
   U                       - unidirectional
   N                       - NAT
   A                       - accounted
   S                       - pxl enabled
   Q                       - qxl enabled
   I                       - NAC enabled
   O                       - created for rule with/below dynamic object
   D                       - created for rule with/below domain object
   T                       - created for rule with/below time object
   Z                       - created for rule with/below Sec Zone object
   B                       - created for rule with/below IDA support object
   R                       - created for rule with/below Traceroute object
   P                       - created for a connection that may match on a service with src port
Drop templates flags (one or more of the below flags):
   D                       - drop template
   L                       - log drop action
</pre></td></tr><tr><td><p><code>fwaccel templates -s</code></p></td><td><p>Shows the summary of SecureXL Connections Templates (number of templates).</p><p>Note: Depending on the number of current templates, might consume memory at very high level.</p></td></tr><tr><td><p><code>fwaccel templates -d</code></p></td><td><p>Shows the Drop Templates table.</p></td></tr><tr><td><p><code>fwaccel templates -m &lt;<em>max_entries&gt;</em></code></p></td><td><p>Shows the SecureXL Connections Templates limited to the number of <em>max_entries</em>.</p></td></tr><tr><td><p><code>fwaccel identities &lt;<em>options</em>&gt;</code></p></td><td><p>Shows the SecureXL Identities Table ('<code>cphwd_dev_identity_table</code>').</p><p>Returned strings:</p><ul><li><code>The SecureXL identity table is empty</code></li><li><code>Failed to read the SecureXL identity table - no memory</code></li><li><code>There are <em>VALUE</em> identities in SecureXL identities table<br>...<br>Total number of identities: <em>VALUE</em></code></li></ul><p>Notes:</p><ul><li>Refer to the <a href="https://support.checkpoint.com/product/436#f-commonsource=C.%20Documentation" target="_blank" rel="noopener">Identity Awareness Administration Guide</a> for your version</li><li>Command is not available for IPv6</li></ul></td></tr><tr><td><p><code>fwaccel identities -h</code></p></td><td><p>Shows the help message with available flags for '<code>identities</code>' parameter.</p><p><em>Output</em>:</p><pre>Usage: fwaccel identities &lt;options&gt;

Options:
   -m &lt;max entries&gt;        - max number of entries to print
   -s                      - print only number of connections
   -h                      - this help message
</pre></td></tr><tr><td><p><code>fwaccel identities -s</code></p></td><td><p>Shows the summary of SecureXL Identities Table (number of entries).</p></td></tr><tr><td><p><code>fwaccel identities -m &lt;<em>max_entries&gt;</em></code></p></td><td><p>Shows the SecureXL Identities Table limited to the number of <em>max_entries</em>.</p></td></tr><tr><td><p><code>fwaccel revoked_ips &lt;<em>options</em>&gt;</code></p></td><td><p>Shows the SecureXL Revoked IPs Table ('<code>cphwd_dev_revoked_ips_table</code>').</p><p>Returned strings:</p><ul><li><code>The SecureXL templates' revoked IPs table is empty</code></li><li><code>Failed to read the SecureXL templates' revoked IPs table - no memory</code></li><li><code>There are <em>VALUE</em> revoked IPs in SecureXL templates' revoked IPs table<br>...<br>Total number of templates' revoked IPs:: <em>VALUE</em></code></li></ul><p>Notes:</p><ul><li>Refer to the <a href="https://support.checkpoint.com/product/436#f-commonsource=C.%20Documentation" target="_blank" rel="noopener">Identity Awareness Administration Guide</a> for your version</li><li>Command is not available for IPv6</li></ul></td></tr><tr><td><p><code>fwaccel revoked_ips -h</code></p></td><td><p>Shows the help message with available flags for '<code>revoked_ips</code>' parameter.</p><p><em>Output</em>:</p><pre>Usage: fwaccel revoked_ips -h

Options:
   -m &lt;max entries&gt;        - max number of entries to print
   -s                      - print only number of connections
   -h                      - this help message
</pre></td></tr><tr><td><p><code>fwaccel revoked_ips -s</code></p></td><td><p>Shows the summary of SecureXL Revoked IPs Table (number of entries).</p></td></tr><tr><td><p><code>fwaccel revoked_ips -m &lt;<em>max_entries&gt;</em></code></p></td><td><p>Shows the SecureXL Revoked IPs Table limited to the number of <em>max_entries</em>.</p></td></tr><tr><td><p><code>fwaccel dbg &lt;<em>options</em>&gt;</code></p></td><td><p>Controls the SecureXL debug (run '<code>fwaccel dbg -h</code>').</p><p>By default, the debug messages will be printed to <em>/var/log/messages</em> file.</p><p>Therefore, you must set the usual kernel debugging options using these commands (refer to the section "<span targetid="Debug">SecureXL Debug</span>"):</p><p><code>[Expert@HostName:0]# fw ctl debug 0<br>[Expert@HostName:0]# fwaccel dbg resetall<br>[Expert@HostName:0]# fw ctl debug -buf 32000<br>[Expert@HostName:0]# fwaccel dbg -m <em>MODULE</em> + <em>FLAG1 FLAG2 ... FLAGn</em><br>[Expert@HostName:0]# fwaccel dbg list<br>[Expert@HostName:0]# fw ctl kdebug -T -f &gt; /var/log/debug.txt</code></p></td></tr><tr><td><p><code>fwaccel dbg -h</code></p></td><td><p>Shows the help message with available options, list of debug modules and their flags.</p><p><em>Output</em>:</p><pre>Usage: fwaccel dbg [-m &lt;...&gt;] [resetall | reset | list | all | +/- &lt;flags&gt;]
   -m &lt;module&gt;             - module of debugging
   -h                      - this help message
   resetall                - reset all debug flags for all modules
   reset                   - reset all debug flags for module
   all                     - set all debug flags for module
   list                    - list all debug flags for all modules
   -f reset | "&lt;5-tuple&gt;"  - filter debug messages
   + &lt;flags&gt;               - set the given debug flags
   - &lt;flags&gt;               - unset the given debug flags

List of available modules and flags:
... ... ...
</pre></td></tr><tr><td><p><code>fwaccel dbg list</code></p></td><td><p>Shows all currently enabled debug flags for all debug modules.</p></td></tr><tr><td><p><code>fwaccel dbg resetall</code></p></td><td><p>Resets all debug flags for all debug modules to their default (none).</p></td></tr><tr><td><p><code>fwaccel dbg -m <em>MODULE</em> reset</code></p></td><td><p>Resets all debug flags for the specified debug module to their default (none).</p></td></tr><tr><td><p><code>fwaccel dbg -m <em>MODULE</em> all</code></p></td><td><p>Enables all supported debug flags for the specified debug module.</p></td></tr><tr><td><p><code>fwaccel dbg -m <em>MODULE</em> + <em>FLAG1 FLAG2 ... FLAGn</em></code></p></td><td><p>Enables the specified debug flags for the specified debug module.</p></td></tr><tr><td><p><code>fwaccel dbg -m <em>MODULE</em> - <em>FLAG1 FLAG2 ... FLAGn</em></code></p></td><td><p>Disables the specified debug flags for the specified debug module.</p></td></tr><tr><td><p><code>fwaccel dbg -f <em>Source_IP</em>,<em>Source_Port</em>,<em>Dest_IP</em>,<em>Dest_Port</em>,<em>Proto</em></code></p></td><td><p>Configures the debugging filter - only the specified connection will be printed in the debug output.</p><p>Notes:</p><ul><li>Only one filter can be set at one time</li><li>You can use the asterisk "*" as a wildcard for IP Address / Port number / Protocol number</li></ul><p><em>Example for an SSH connection</em>:</p><code>[Expert@HostName:0]# fwaccel dbg -f 172.30.1.1,*,172.30.41.90,22,6</code></td></tr><tr><td><p><code>fwaccel dbg -f reset</code></p></td><td><p>Resets the debugging filter.</p></td></tr><tr><td><p><code>fwaccel cfg &lt;<em>options</em>&gt;</code></p></td><td><p>Configures the acceleration parameters (run '<code>fwaccel cfg</code>').</p></td></tr><tr><td><p><code>fwaccel cfg -h</code></p></td><td><p>Shows the help message with available configuration parameters.</p><p><em>Output</em>:</p><pre>Usage: fwaccel cfg &lt;options&gt;

Options:
   -i &lt;on | off&gt;           - ignore api version mismatch
   -t &lt;seconds&gt;            - api call timeout
   -r &lt;number&gt;             - api call retries
   -d &lt;number&gt;             - deletion retries
   -e &lt;number&gt;             - general errors limit
   -a &lt;ifn | name&gt; | reset - define unaccelerated interface
   -p &lt;on | off&gt;           - offload templates if possible
   -l &lt;number&gt;             - templates database limit (0 for default)
   -m &lt;seconds&gt;            - templates timeout (0 for default)
   -c &lt;number&gt;             - connections threshold to disable templates
   -v &lt;seconds&gt;            - statistics request interval (0 to disable)
   -s &lt;on | off&gt;           - enable/disable ClusterXL LS support
   -w &lt;on | off&gt;           - enable/disable warnings for sequence verifier
   -b &lt;on | off&gt;           - enable/disable drop templates matching
   -h                      - this help message
</pre></td></tr><tr><td><p><code>fwaccel cfg -i {on | off}</code></p></td><td><p>Configures SecureXL to ignore API version mismatch:</p><ul><li><code>fwaccel cfg -i on</code> = ignore API version mismatch</li><li><code>fwaccel cfg -i off</code> = do not ignore API version mismatch (default)</li></ul></td></tr><tr><td><p><code>fwaccel cfg -r &lt;<em>number</em>&gt;</code></p></td><td><p>Configures SecureXL API call retries.</p></td></tr><tr><td><p><code>fwaccel cfg -d &lt;<em>number</em>&gt;</code></p></td><td><p>Configures SecureXL deletion retries.</p></td></tr><tr><td><p><code>fwaccel cfg -e &lt;<em>number</em>&gt;</code></p></td><td><p>Configures SecureXL general errors limit.</p></td></tr><tr><td><p><code>fwaccel cfg -a &lt;if_number | <em>name</em>&gt;</code></p></td><td><p>Configures the specified interface as non-accelerated in one of these ways:</p><ul><li>By its number in the Check Point kernel (run the '<code>fw ctl iflist</code>' command)</li><li>By its name (run the '<code>ifconfig -a | grep HWaddr</code>' command)</li></ul></td></tr><tr><td><p><code>fwaccel cfg -p {on | off}</code></p></td><td><p>Configures SecureXL offload templates (if possible):</p><ul><li><code><em>fwaccel cfg -p on</em></code> = enable offloading of new templates (default)</li><li><code><em>fwaccel cfg -p off</em></code> = disable offloading of new templates</li></ul></td></tr><tr><td><p><code>fwaccel cfg -l &lt;<em>number</em>&gt;</code></p></td><td><p>Configures the SecureXL templates database limit (0 for default).</p></td></tr><tr><td><p><code>fwaccel cfg -m &lt;<em>seconds</em>&gt;</code></p></td><td><p>Configures the SecureXL templates timeout (0 for default).</p></td></tr><tr><td><p><code>fwaccel cfg -c &lt;<em>number</em>&gt;</code></p></td><td><p>Configures the SecureXL connections threshold to disable templates.</p></td></tr><tr><td><p><code>fwaccel cfg -v &lt;<em>seconds</em>&gt;</code></p></td><td><p>Configures the SecureXL statistics request interval (0 to disable).</p></td></tr><tr><td><p><code>fwaccel cfg -w {on | off}</code></p></td><td><p>Configures SecureXL support for warnings for IPS protection 'Sequence Verifier':</p><ul><li><code>fwaccel cfg -w on</code> = enable support for warnings</li><li><code>fwaccel cfg -w off</code> = disable support for warnings</li></ul></td></tr><tr><td><p><code>fwaccel cfg -b {on | off}</code></p></td><td><p>Configures the SecureXL Drop Templates matching (<a href="https://support.checkpoint.com/results/sk/sk66402" target="_blank" rel="noopener">sk66402</a>):</p><ul><li><code>fwaccel cfg -b on</code> = enable SecureXL Drop Templates matching</li><li><code>fwaccel cfg -b off</code> = disable SecureXL Drop Templates matching</li></ul></td></tr><tr><td><p><code>fwaccel ranges</code></p></td><td><p>Shows the loaded SecureXL ranges.</p></td></tr><tr><td><p><code>fwaccel ranges -h</code></p></td><td><p>Prints the help message with available options for the '<code>ranges</code>' parameter.</p><p>Output:</p><pre>Usage: fwaccel ranges [-l|-a|-p id|-s id]

Options:
   -l          - get the list of loaded ranges
   -a          - print all loaded ranges (the default)
   -p id       - print the given range
   -s id       - print summary for the given range
</pre></td></tr><tr><td><p><code>fwaccel ranges -l</code></p></td><td><p>Shows the list of loaded SecureXL ranges.</p><p><em>Example</em>:</p><pre>[Expert@R80.20:0]# fwaccel ranges -l
SecureXL device 0:
        0       Anti spoofing ranges eth0:
        1       Anti spoofing ranges eth1:
        2       Anti spoofing ranges eth2:
        3       Anti spoofing ranges eth3:
        4       Anti spoofing ranges eth4:
</pre></td></tr><tr><td><p><code>fwaccel ranges -p &lt;<em>Range_ID</em>&gt;</code></p></td><td><p>Shows the specified loaded SecureXL range.</p><p><em>Example</em>:</p><pre>[Expert@R80.20:0]# fwaccel ranges -p 3
SecureXL device 0:
    Anti spoofing ranges eth3:
        (0) 3.3.3.2 - 3.3.3.254
</pre></td></tr><tr><td><p><code>fwaccel ranges -s &lt;<em>Range_ID</em>&gt;</code></p></td><td><p>Shows the summary for the specified loaded SecureXL range.</p><p><em>Example</em>:</p><pre>[Expert@R80.20:0]# fwaccel ranges -s 3
SecureXL device 0:
    List name "Anti spoofing ranges eth3:", ID 3, Number of ranges 1
</pre></td></tr><tr><td><p><code>fwaccel ranges -a</code></p></td><td><p>Shows all loaded SecureXL ranges.</p><p><em>Example</em>:</p><pre>Anti spoofing ranges eth0:
(0) 0.0.0.0 - 126.255.255.255
(1) 128.0.0.0 - 172.29.255.255
(2) 172.30.0.1 - 172.30.41.239
(3) 172.30.41.241 - 172.30.255.254
(4) 172.31.0.0 - 192.168.40.255
(5) 192.168.42.0 - 223.255.255.255
(6) 240.0.0.0 - 255.255.255.254
Anti spoofing ranges eth1:
(0) 192.168.41.1 - 192.168.41.239
(1) 192.168.41.241 - 192.168.41.254
Rule base source ranges (ip):
(0) 0.0.0.0 - 172.30.41.239
(1) 172.30.41.240 - 172.30.41.240
(2) 172.30.41.241 - 192.168.41.239
(3) 192.168.41.240 - 192.168.41.240
(4) 192.168.41.241 - 255.255.255.255
Rule base destination ranges (ip):
(0) 0.0.0.0 - 172.30.41.239
(1) 172.30.41.240 - 172.30.41.240
(2) 172.30.41.241 - 192.168.41.239
(3) 192.168.41.240 - 192.168.41.240
(4) 192.168.41.241 - 255.255.255.255
Rule base dport ranges (port, proto):
(0) 0, 0 - 
0, 0
(1) 1, 0 - 
65535, 5
(2) 0, 6 - 
65535, 6
(3) 0, 7 - 
65535, 16
(4) 0, 17 - 
65535, 17
(5) 0, 18 - 
65535, 88
(6) 0, 89 - 
65535, 89
(7) 0, 90 - 
65535, 102
(8) 0, 103 - 
65535, 103
(9) 0, 104 - 
65535, 65535
</pre></td></tr><tr><td><p><code>fwaccel tab -t &lt;<em>table_name</em>&gt;</code></p></td><td><p>Shows the contents of the specified SecureLX 'fwaccel' kernel table.</p></td></tr><tr><td><p><code>fwaccel tab -h</code></p></td><td><p>Shows the help message with available options for the '<code>tab</code>' parameter.</p><pre>Usage: fwaccel [-i &lt;ppak_id&gt;] tab [-f] [-s] [-m &lt;rows&gt;] -t table_name

Options:
   -f                  - Formatted output (recommended)                     
   -i &lt;ppak_id&gt;       - Only print table data for the given SecureXL device
   -s                  - Print summary only
   -m &lt;rows&gt;           - Maximum number of rows to print (default=1000)
   -t &lt;table&gt;          - Table name (required)

Note: Dynamic tables, such as the connections table can change while
printing.  This may cause some values to be missed or reported twice.

Valid table names are:
        connections
        inbound_SAs
        outbound_SAs
        vpn_link_selection
        drop_templates
        vpn_trusted_ifs
        profile
        mcast_drop_conns
        invalid_replay_counter
        ipsec_mtu_icmp
        gtp_tunnels
        gtp_apns
        if_by_name
        PMTU_table
        frag_table
        reset_table
        dos_ip_blacklists
        dos_pbox
        dos_rate_matches
        dos_rate_track_src
        dos_rate_track_src_svc
        dos_pbox_violating_ips
        fg_conn_table
</pre></td></tr><tr><td><p><code>fwaccel tab</code></p></td><td><p>Shows the contents of the SecureXL <code>"connections"</code> kernel table (as the <code>"fwaccel conns"</code> command).</p><p><em>Example</em>:</p><pre>[Expert@R80.20:0]# fwaccel tab -t connections
-------- connections --------
htab_bl, id 0, size 983040, attributes: expire, no update, #vals 100 #slinks 100
</pre><p><code>&lt;0202020a, 0101010a, 80ad0050, 00000006&gt; -&gt; &lt;a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50900, 00000111, 00000000, 00000000&gt; (00000000)<br>&lt;0101010a, 0202020a, 005080ad, 00000006; a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50900, 00000011, 00000000, 00000000, 00000000; 4/8&gt;<br>&lt;0202020a, 0101010a, 80ba0050, 00000006&gt; -&gt; &lt;a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50900, 00000111, 00000000, 00000000&gt; (00000000)<br>&lt;0101010a, 0202020a, 005080ba, 00000006; a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50900, 00000011, 00000000, 00000000, 00000000; 4/8&gt;<br>&lt;0202020a, 0101010a, 80930050, 00000006&gt; -&gt; &lt;a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50902, 00000111, 00000000, 00000000&gt; (00000000)<br>&lt;0101010a, 0202020a, 00508093, 00000006; a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50902, 00000011, 00000000, 00000000, 00000000; 4/8&gt;<br>&lt;0202020a, 0101010a, 80a00050, 00000006&gt; -&gt; &lt;a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50902, 00000111, 00000000, 00000000&gt; (00000000)<br>&lt;0101010a, 0202020a, 005080a0, 00000006; a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50902, 00000011, 00000000, 00000000, 00000000; 4/8&gt;<br>&lt;0202020a, 0101010a, 80860050, 00000006&gt; -&gt; &lt;a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50902, 00000111, 00000000, 00000000&gt; (00000000)<br>&lt;0101010a, 0202020a, 00508086, 00000006; a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50902, 00000011, 00000000, 00000000, 00000000; 4/8&gt;<br>&lt;0202020a, 0101010a, 806c0050, 00000006&gt; -&gt; &lt;a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50902, 00000111, 00000000, 00000000&gt; (00000000)<br>&lt;0101010a, 0202020a, 0050806c, 00000006; a3565000, 50003547, 034fa356, 00000302, 02030203, 00000080, 08f50902, 00000011, 00000000, 00000000, 00000000; 4/8&gt;</code></p></td></tr><tr><td><p><code>fwaccel tab -t &lt;<em>table_name</em>&gt; -s</code></p></td><td><p>Shows the summary of the specified SecureXL 'fwaccel' kernel table.</p></td></tr><tr><td><p><code>fwaccel feature</code></p></td><td><p>Controls the SecureXL 'fwaccel' module features.</p></td></tr><tr><td><p><code>fwaccel feature -h</code></p></td><td><p>Shows the help message with available options for the '<code>feature</code>' parameter.</p><p><em>Output</em>:</p><pre>Usage: fwaccel feature &lt;feature&gt; {on | off | get}

Available features: sctp 
</pre></td></tr><tr><td><p><code>fwaccel feature &lt;<em>feature_name</em>&gt; {on | off}</code></p></td><td><p>Enables/Disables the specified SecureXL 'fwaccel' module feature (run the '<code>fwaccel stat</code>' command and refer to the <code>"Accelerator Features"</code> section).</p><p>Available features (list depends on the Security Gateway version):</p><ul><li><code>sctp</code> (R76 and higher - see <a href="https://support.checkpoint.com/results/sk/sk114957" target="_blank" rel="noopener">sk114957</a>)</li></ul></td></tr></tbody></table>