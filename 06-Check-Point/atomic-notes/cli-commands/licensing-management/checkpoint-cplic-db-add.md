---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cplic db_add
---

# CheckPoint cplic db_add - License Repository Addition

## Command Purpose
Adds licenses to the license repository on the Management Server. When you add Local licenses to the license repository, Management Server automatically attaches them to the managed Security Gateway / Cluster Member with the matching IP address. When you add Central licenses, you must manually attach them.

## Syntax
```
cplic db_add {-h | -help}
cplic [-d] db_add -l <License File> [<Host>] [<Expiration Date>]
[<Signature>] [<SKU/Features>]
```

## Parameters
| Parameter | Description |
|---|---|
| {-h \| -help} | Shows the applicable built-in usage |
| -d | Runs the command in debug mode. Use only if you troubleshoot the command itself |
| -l <License File> | Name of the file that contains the license |
| <Host> | Hostname or IP address of the Security Management Server / Domain Management Server |
| <Expiration Date> | The license expiration date |
| <Signature> | The license signature string. For example: aa6uwknDc-CE6CRtjhv-zipoVWSnm-z98N7Ck3m Case sensitive. Hyphens are optional |
| <SKU/Features> | The SKU of the license summarizes the features included in the license. For example, CPSUITE-EVAL-3DES-vNG |

## Examples
If the file 192.0.2.11.lic contains one or more licenses, the command "cplic db_add -l 192.0.2.11.lic" produces output similar to:

```
[Expert@MGMT]# cplic db_add -l 192.0.2.11.lic
Adding license to database ...
Operation Done
[Expert@MGMT]#
```

## Notes
- Applies only to a Management Server
- You get the license details in the Check Point User Center
- Local licenses are automatically attached to matching IP addresses
- Central licenses require manual attachment after addition to repository