resource "oci_identity_compartment" "this" {
  compartment_id = var.parent_compartment_id

  name        = local.compartment_name
  description = local.compartment_description

  freeform_tags = local.combined_freeform_tags
  defined_tags  = var.defined_tags

  enable_delete = var.enable_delete
}