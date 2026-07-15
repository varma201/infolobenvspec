output "compartment_id" {
  description = "The OCID of the created compartment."
  value       = module.compartment.compartment_id
}

output "vcn_id" {
  description = "The OCID of the created VCN."
  value       = module.vcn.vcn_id
}