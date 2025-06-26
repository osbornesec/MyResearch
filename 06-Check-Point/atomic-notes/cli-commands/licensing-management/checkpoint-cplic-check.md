---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cplic check
---

# CheckPoint cplic check - License Feature Validation

## Command Purpose
Confirms that the license includes the feature on the local Security Gateway or Management Server. This command validates license compliance for specific features and provides licensing information for Check Point products.

## Syntax
```bash
cplic check {-h | -help}
cplic [-d] check [-p <Product>] [-v <Version>] [{-c | -count}] [-t <Date>]
[{-r | -routers}] [{-S | -SRusers}] <Feature>
```

## Execution Context
You can run this command:
- On a Management Server / Security Gateway / Cluster Member in Gaia Clish or the Expert mode
- On a Scalable Platform Security Group in Gaia gClish or the Expert mode

## Parameters

| Parameter | Description |
|-----------|-------------|
| `{-h | -help}` | Shows the applicable built-in usage |
| `-d` | Runs the command in debug mode. Use only if you troubleshoot the command itself. Best Practice: redirect output to a file or use script command to save CLI session |
| `-p <Product>` | Product for which license information is requested. Examples: `fwl` (FireWall-1 infrastructure), `mgmt` (Multi-Domain Server), `services` (various services), `cvpn` (Mobile Access), `etm` (QoS FloodGate-1), `eps` (Endpoint Software Blades) |
| `-v <Version>` | Product version for which license information is requested |
| `{-c | -count}` | Outputs the number of licenses connected to this feature |
| `-t <Date>` | Checks license status on future date. Use format `ddmmyyyy` |
| `{-r | -routers}` | Checks how many routers are allowed. The `<Feature>` option is not needed |
| `{-S | -SRusers}` | Checks how many SecuRemote users are allowed |
| `<Feature>` | Feature for which license information is requested |

## Examples

### Management Server in High Availability
```bash
[Esper1BRONY] # cplic check -p fwl -v 6.0 -c mpmtha
cplic check "mpmtha": 1 licensee
```

### Cluster Member Feature Check
```bash
[Esper1BOK] # cplic check cluster-u
cplic check "cluster-u": license valid

[Esper1BOK] # cplic check -c cluster-u
cplic check "cluster-u": 8 licensee
```

## Reference
See CheckPoint SK66245 for additional information on license feature validation.