Command Description **`fw ctl multik`** Controls CoreXL Firewall instances    `fw ctl multik stat` Prints the summary table for CPU cores and CoreXL Firewall instances    `fw ctl multik stat` Prints the general help message with available parameters    `fw ctl multik start` Starts CoreXL    `fw -i _Instance_ID_ ctl multik start` Starts specific CoreXL Firewall instance    `fw ctl multik stop` Stops CoreXL    `fw -i _Instance_ID_ ctl multik stop` Stops specific CoreXL Firewall instance **`fw ctl affinity <_options_>`** Controls CoreXL affinities of Virtual Devices / interfaces / processes / CoreXL Firewall instances to CPU cores    `fw ctl affinity` Prints the help message with available options    `fw -d ctl affinity -corelicnum` Prints the number of system CPU cores allowed by the CoreXL license    `fw ctl affinity -l` Prints the current CoreXL affinities    `fw ctl affinity -l -r` Prints the current CoreXL affinities in reverse order    `fw ctl affinity -l -a` Prints all current CoreXL affinities    `fw ctl affinity -l -v` Prints the current CoreXL affinities - verbose output    `fw ctl affinity -l -q` Prints the current CoreXL affinities and suppresses errors    `fw ctl affinity -l -r -a -v` Prints the current CoreXL affinities - verbose output that combines all possible outputs (shows all targets in reverse order)    `fw ctl affinity -l -x [-vsid _VSID_ranges_] [-cpu _CPU_ID_ranges_] [-flags e|k|t|n|h] [-r] [-a] [-v]` Prints the current CoreXL affinities - extended output  
Notes:  

-   If "`-vsid`" flag is omitted, the current context will be used (in which the command was issued)
-   The "`-vsid`" flag accepts either a single VSID (e.g., '`-vsid 7`'), or a range of VSID numbers (e.g., '`-vsid 0-5`'), or a combination (e.g., '`-vsid 0-2 4`')
-   The "`-cpu`" flag accepts either a single CPU ID (e.g., '`-cpu 7`'), or a range of CPU ID numbers (e.g., '`-cpu 0-5`'), or a combination (e.g., '`-cpu 0-2 4`')
-   The "`-flags`" requires at least one of the following arguments (multiple arguments must be specified together):
    -   `e` - do not print exception processes
    -   `k` - do not print kernel threads
    -   `t` - print all process threads
    -   `n` - print process name instead of `/proc/<_PID_>/cmdline`
    -   `h` - print CPU mask in Hex format
    -   `o` - print output into the '`/tmp/affinity_list_output`' file (VSX R77.10 and above)

**`fw ctl affinity -s`** Sets CoreXL Affinity    `fw ctl affinity -s -i _Interface_Name_ _CPU_ID_` Sets affinities of the specified interface to CPU core  
**Note:** An interface's affinity can be set only to a single core    `fw ctl affinity -s -p _PID_ _CPU_IDs_ | all` Sets affinities of the specified process (by PID) to CPU cores    `fw ctl affinity -s -d -pname _Daemon_Name_ [-vsid _VSID_ranges_] -cpu _CPU_ID_ranges_` Sets affinity of the specified process (by name) to CPU cores  
Notes:  

-   If "`-vsid`" flag is omitted, the current context will be used (in which the command was issued)
-   The "`-vsid`" flag accepts either a single VSID (e.g., '`-vsid 7`'), or a range of VSID numbers (e.g., '`-vsid 0-5`'), or a combination (e.g., '`-vsid 0-2 4`')
-   The "`-cpu`" flag accepts either a single CPU ID (e.g., '`-cpu 7`'), or a range of CPU ID numbers (e.g., '`-cpu 0-5`'), or a combination (e.g., '`-cpu 0-2 4`')

   `fw ctl affinity -s -d [-vsid _VSID_ranges_] -cpu _CPU_ID_ranges_` Sets affinities of Virtual Devices (VS, VR, VSW) to CPU cores  
Notes:  

-   If "`-vsid`" flag is omitted, the current context will be used (in which the command was issued)
-   The "`-vsid`" flag accepts either a single VSID (e.g., '`-vsid 7`'), or a range of VSID numbers (e.g., '`-vsid 0-5`'), or a combination (e.g., '`-vsid 0-2 4`')
-   The "`-cpu`" flag accepts either a single CPU ID (e.g., '`-cpu 7`'), or a range of CPU ID numbers (e.g., '`-cpu 0-5`'), or a combination (e.g., '`-cpu 0-2 4`')

   `fw ctl affinity -s -d -inst _Instances_ranges_ -cpu _CPU_ID_ranges_` Sets affinities of the specified FWK instances to CPU cores  
Notes:  

-   The "`-inst`" flag accepts either a single FWK\_ID (e.g., '`-inst 7`'), or a list of FWK\_ID numbers (e.g., '`-inst 0 2 4`')
-   The "`-cpu`" flag accepts either a single CPU ID (e.g., '`-cpu 7`'), or a range of CPU ID numbers (e.g., '`-cpu 0-5`'), or a combination (e.g., '`-cpu 0-2 4`')

   `fw ctl affinity -s -d -fwkall _Number_of_CPUs_` Sets affinities of all FWK instances to CPU cores (where _Number\_of\_CPUs_ is an integer number) **`fw ctl affinity -vsx_factory_defaults`** Resets all VSX affinity settings (prompts the user) (VSX R77 and above) **`fw ctl affinity -vsx_factory_defaults_no_prompt`** Resets all VSX affinity settings (does not prompt the user) (VSX R77 and above)