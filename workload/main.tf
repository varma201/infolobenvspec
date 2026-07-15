module "compartment" {
  source = "../modules/compartments"

  parent_compartment_id = var.parent_compartment_id
  environment           = var.environment
  business_unit         = var.business_unit
  defined_tags          = var.defined_tags
  freeform_tags         = var.freeform_tags
  enable_delete         = var.enable_delete
}

module "vcn" {
  source = "../modules/vcn"

  compartment_id = module.compartment.compartment_id
  environment    = var.environment
  business_unit  = var.business_unit
  cidr_blocks    = var.vcn_cidr_blocks
  defined_tags   = var.defined_tags
  freeform_tags  = var.freeform_tags
}