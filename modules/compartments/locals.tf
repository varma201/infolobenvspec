locals {
  # Clean the values before using them in the compartment name.
  business_unit_name = lower(
    replace(trimspace(var.business_unit), " ", "-")
  )

  environment_name = lower(
    replace(trimspace(var.environment), " ", "-")
  )

  # Example: finance_production_cmp
  compartment_name = "${local.business_unit_name}_${local.environment_name}_cmp"

  # Description is automatically generated.
  compartment_description = (
    "${title(var.business_unit)} compartment for the ${var.environment} environment."
  )
}