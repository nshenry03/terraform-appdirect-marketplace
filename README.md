AppDirect Marketplace Terraform module
======================================

Terraform module which creates all necessary AppDirect Marketplace resources.

Usage
-----

```hcl
module "marketplace" {
  ...
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_failover\_vpc | Controls if VPC should be created (it affects almost all resources) | string | `true` | no |
| create\_primary\_vpc | Controls if VPC should be created (it affects almost all resources) | string | `true` | no |
| failover\_vpc\_azs | A list of availability zones in the region | list | `[]` | no |
| failover\_vpc\_cidr | The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden | string | `0.0.0.0/0` | no |
| failover\_vpc\_database\_subnets | A list of database subnets | list | `[]` | no |
| failover\_vpc\_intra\_subnets | A list of intra subnets | list | `[]` | no |
| failover\_vpc\_private\_subnets | A list of private subnets inside the VPC | list | `[]` | no |
| failover\_vpc\_public\_subnets | A list of public subnets inside the VPC | list | `[]` | no |
| name | Name to be used on all the resources as identifier | string | `` | no |
| primary\_vpc\_azs | A list of availability zones in the region | list | `[]` | no |
| primary\_vpc\_cidr | The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden | string | `0.0.0.0/0` | no |
| primary\_vpc\_database\_subnets | A list of database subnets | list | `[]` | no |
| primary\_vpc\_intra\_subnets | A list of intra subnets | list | `[]` | no |
| primary\_vpc\_private\_subnets | A list of private subnets inside the VPC | list | `[]` | no |
| primary\_vpc\_public\_subnets | A list of public subnets inside the VPC | list | `[]` | no |
| vpc\_module\_version | Version of the VPC module that you would like to use | string | `~> 1.0` | no |

## Outputs

| Name | Description |
|------|-------------|
| example | Example description |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

Tests
-----

This module has been packaged with [awspec](https://github.com/k1LoW/awspec)
tests through test kitchen. To run them:

1. Install [rvm][1] and the ruby version specified in the `Gemfile`
1. Install bundler and the gems from our Gemfile:

    ```bash
    gem install bundler && bundle install
    ```

1. Test using `bundle exec kitchen test` from the root of the repo.

License
-------

All Rights Reserved. See LICENSE for full details.

Repository Features
===================

setup
-----

1. Install packages

    ```bash
    pip install --user --requirement requirements-dev.txt
    ```

pre-commit
----------

1. Install the pre-commit hook

    ```bash
    pre-commit install
    ```

1. After pre-commit hook has been installed you can run it manually on all files
   in the repository

    ```bash
    pre-commit run -a
    ```

grip
----

1. Render local `README.md` files before sending off to GitHub.

    ```bash
    grip --browser
    ```


[1]: https://rvm.io/rvm/install
