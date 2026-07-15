resource "oci_objectstorage_bucket" "this" {
  compartment_id = var.compartment_id
  namespace      = var.namespace
  name           = var.bucket_name

  access_type  = var.access_type
  storage_tier = var.storage_tier
  versioning   = var.versioning

  freeform_tags = local.freeform_tags
}