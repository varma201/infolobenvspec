output "vcn_id" {
  description = "The OCID of the created VCN."
  value       = oci_core_vcn.this.id
}

output "vcn_name" {
  description = "The display name of the created VCN."
  value       = oci_core_vcn.this.display_name
}

output "vcn_dns_label" {
  description = "The DNS label of the created VCN."
  value       = oci_core_vcn.this.dns_label
}

output "vcn_cidr_blocks" {
  description = "The CIDR blocks assigned to the VCN."
  value       = oci_core_vcn.this.cidr_blocks
}

output "vcn_state" {
  description = "The current lifecycle state of the VCN."
  value       = oci_core_vcn.this.state
}

output "default_route_table_id" {
  description = "The OCID of the VCN default route table."
  value       = oci_core_vcn.this.default_route_table_id
}

output "default_security_list_id" {
  description = "The OCID of the VCN default security list."
  value       = oci_core_vcn.this.default_security_list_id
}

output "default_dhcp_options_id" {
  description = "The OCID of the VCN default DHCP options."
  value       = oci_core_vcn.this.default_dhcp_options_id
}