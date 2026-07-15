
# -----------------------------------------------
# OCI Object Storage Bucket module - Terraform backend bucket 
# -----------------------------------------------
module "storage_bucket" {
  source         = "../modules/storage_bucket"
  compartment_id = var.compartment_ocid
  namespace      = var.namespace
  bucket_name    = var.bucket_name
  environment    = var.environment
  access_type    = var.bucket_access_type
  storage_tier   = var.bucket_storage_tier
  versioning     = var.bucket_versioning
  managed_by     = var.bucket_managed_by
  region         = var.region
}


# -----------------------------------------------
# OCI Object Storage Pre-Authenticated Request (PAR) module
# -----------------------------------------------
module "object_storage_par" {
  source = "../modules/object_storage_par"

  namespace   = var.namespace
  bucket_name = module.storage_bucket.bucket_name
  par_name    = var.par_name
  access_type = var.par_access_type
  object_name = var.par_object_prefix
  time_expires = var.par_time_expires
}