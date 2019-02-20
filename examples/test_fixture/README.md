Test fixture of TODO
====================
TODO description

Usage
-----

To run the tests, from the repo root execute:

```
$ kitchen test
...
Finished in 4.25 seconds (files took 2.75 seconds to load)
20 examples, 0 failures

       Finished verifying <default-aws> (0m9.03s).
-----> Kitchen is finished. (0m9.40s)
```

This will destroy any existing test resources, create the resources afresh, run the tests, report back, and destroy the resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_allowed\_account\_ids | - | list | `[ "845868186186" ]` | no |
| failover\_region | - | string | `eu-west-2` | no |
| primary\_region | - | string | `eu-west-1` | no |
| user | - | string | `user` | no |

## Outputs

| Name | Description |
|------|-------------|
| failover\_region | Failover region we created the resources in. |
| primary\_region | Primary region we created the resources in. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
