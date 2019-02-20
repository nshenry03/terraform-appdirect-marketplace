provider "aws" {
  alias               = "primary"
  region              = "${var.primary_region}"
  allowed_account_ids = ["${var.aws_allowed_account_ids}"]
}

provider "aws" {
  alias               = "failover"
  region              = "${var.failover_region}"
  allowed_account_ids = ["${var.aws_allowed_account_ids}"]
}

data "aws_availability_zones" "primary" {
  provider = "aws.primary"
}

data "aws_availability_zones" "failover" {
  provider = "aws.failover"
}

module "marketplace" {
  providers = {
    aws.primary  = "aws.primary"
    aws.failover = "aws.failover"
  }

  source = "../.."

  name = "${var.user}-marketplace"

  primary_vpc_cidr             = "10.0.0.0/16"
  primary_vpc_azs              = ["${data.aws_availability_zones.primary.names[0]}", "${data.aws_availability_zones.primary.names[1]}"]
  primary_vpc_private_subnets  = ["10.0.10.0/24", "10.0.11.0/24"]
  primary_vpc_public_subnets   = ["10.0.20.0/24", "10.0.21.0/24"]
  primary_vpc_database_subnets = ["10.0.30.0/24", "10.0.31.0/24"]
  primary_vpc_intra_subnets    = ["10.0.40.0/24", "10.0.41.0/24"]

  failover_vpc_cidr             = "10.1.0.0/16"
  failover_vpc_azs              = ["${data.aws_availability_zones.failover.names[0]}", "${data.aws_availability_zones.failover.names[1]}"]
  failover_vpc_private_subnets  = ["10.1.10.0/24", "10.1.11.0/24"]
  failover_vpc_public_subnets   = ["10.1.20.0/24", "10.1.21.0/24"]
  failover_vpc_database_subnets = ["10.1.30.0/24", "10.1.31.0/24"]
  failover_vpc_intra_subnets    = ["10.1.40.0/24", "10.1.41.0/24"]
}
