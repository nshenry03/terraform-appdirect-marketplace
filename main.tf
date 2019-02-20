provider "aws" {
  alias = "primary"
}

provider "aws" {
  alias = "failover"
}

module "primary_vpc" {
  providers = {
    aws = "aws.primary"
  }

  source  = "git@github.com:nshenry03/terraform-aws-vpc.git"
  version = "${var.vpc_module_version}"

  name = "${var.name}-primary"

  create_vpc = "${var.create_primary_vpc}"

  cidr             = "${var.primary_vpc_cidr}"
  azs              = ["${var.primary_vpc_azs}"]
  private_subnets  = ["${var.primary_vpc_private_subnets}"]
  public_subnets   = ["${var.primary_vpc_public_subnets}"]
  database_subnets = ["${var.primary_vpc_database_subnets}"]
  intra_subnets    = ["${var.primary_vpc_intra_subnets}"]
}

module "failover_vpc" {
  providers = {
    aws = "aws.failover"
  }

  source  = "git@github.com:nshenry03/terraform-aws-vpc.git"
  version = "${var.vpc_module_version}"

  name = "${var.name}-failover"

  create_vpc = "${var.create_failover_vpc}"

  cidr             = "${var.failover_vpc_cidr}"
  azs              = ["${var.failover_vpc_azs}"]
  private_subnets  = ["${var.failover_vpc_private_subnets}"]
  public_subnets   = ["${var.failover_vpc_public_subnets}"]
  database_subnets = ["${var.failover_vpc_database_subnets}"]
  intra_subnets    = ["${var.failover_vpc_intra_subnets}"]
}
