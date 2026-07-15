resource "oci_core_vcn" "this" {
  compartment_id = var.compartment_id

  display_name = local.vcn_name
  dns_label    = local.vcn_dns_label

  cidr_blocks = var.cidr_blocks

  defined_tags  = var.defined_tags
  freeform_tags = local.combined_freeform_tags
}