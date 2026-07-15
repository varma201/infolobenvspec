locals {
  freeform_tags = {
    Environment = var.environment
    ManagedBy   = var.managed_by
    Resource    = "terraform-state"
  }
}