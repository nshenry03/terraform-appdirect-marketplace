variable "vpc_module_version" {
  description = "Version of the VPC module that you would like to use"
  default     = "~> 1.0"
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  default     = ""
}

##############
# PRIMARY VPC
##############
variable "create_primary_vpc" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  default     = true
}

variable "primary_vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  default     = "0.0.0.0/0"
}

variable "primary_vpc_azs" {
  description = "A list of availability zones in the region"
  default     = []
}

variable "primary_vpc_public_subnets" {
  description = "A list of public subnets inside the VPC"
  default     = []
}

variable "primary_vpc_private_subnets" {
  description = "A list of private subnets inside the VPC"
  default     = []
}

variable "primary_vpc_database_subnets" {
  type        = "list"
  description = "A list of database subnets"
  default     = []
}

variable "primary_vpc_intra_subnets" {
  type        = "list"
  description = "A list of intra subnets"
  default     = []
}

##############
# FAILOVER VPC
##############
variable "create_failover_vpc" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  default     = true
}

variable "failover_vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  default     = "0.0.0.0/0"
}

variable "failover_vpc_azs" {
  description = "A list of availability zones in the region"
  default     = []
}

variable "failover_vpc_public_subnets" {
  description = "A list of public subnets inside the VPC"
  default     = []
}

variable "failover_vpc_private_subnets" {
  description = "A list of private subnets inside the VPC"
  default     = []
}

variable "failover_vpc_database_subnets" {
  type        = "list"
  description = "A list of database subnets"
  default     = []
}

variable "failover_vpc_intra_subnets" {
  type        = "list"
  description = "A list of intra subnets"
  default     = []
}
