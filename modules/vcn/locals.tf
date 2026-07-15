locals {
  business_unit = lower(
    replace(trimspace(var.business_unit), " ", "-")
  )

  environment = lower(trimspace(var.environment))

  vcn_name = "${local.business_unit}_${local.environment}_vcn"

  # DNS labels cannot contain underscores or hyphens.
  # Keep this short because OCI DNS labels have stricter limits.
  vcn_dns_label = substr(
    replace("${local.business_unit}${local.environment}vcn", "-", ""),
    0,
    15
  )
}