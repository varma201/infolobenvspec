resource "oci_objectstorage_preauthrequest" "this" {
  namespace = var.namespace
  bucket    = var.bucket_name
  name      = var.par_name

  access_type  = var.access_type
  time_expires = var.time_expires

  object_name = var.object_name

  bucket_listing_action = var.bucket_listing_action
}