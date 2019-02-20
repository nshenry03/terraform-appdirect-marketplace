output "primary_region" {
  description = "Primary region we created the resources in."
  value       = "${var.primary_region}"
}

output "failover_region" {
  description = "Failover region we created the resources in."
  value       = "${var.failover_region}"
}
