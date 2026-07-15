output "compartment_id" {
  description = "The OCID of the created compartment."
  value       = oci_identity_compartment.this.id
}

output "compartment_name" {
  description = "The calculated name of the compartment."
  value       = oci_identity_compartment.this.name
}

output "compartment_description" {
  description = "The calculated description of the compartment."
  value       = oci_identity_compartment.this.description
}

output "compartment_state" {
  description = "The current state of the compartment."
  value       = oci_identity_compartment.this.state
}