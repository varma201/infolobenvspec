locals {
  config = yamldecode(
    file("${path.module}/configs/${var.environment}.yaml")
  )
}

module "workload" {
  source = "../workload"

  parent_compartment_id = local.config.parent_compartment_id
  environment           = local.config.environment
  business_unit         = local.config.business_unit
  vcn_cidr_blocks       = local.config.vcn_cidr_blocks
  defined_tags          = local.config.defined_tags
  freeform_tags         = local.config.freeform_tags
  enable_delete         = local.config.enable_delete
}