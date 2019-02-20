variable "aws_allowed_account_ids" {
  default = [
    "845868186186",
  ]
}

variable "primary_region" {
  default = "eu-west-1"
}

variable "failover_region" {
  default = "eu-west-2"
}

variable "user" {
  default = "user"
}
