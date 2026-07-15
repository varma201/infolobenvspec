# -----------------------------------------------
# Outputs tf bucket
# -----------------------------------------------

output "tf_bucket_name" {
  description = "Name of the created bucket"
  value       = module.storage_bucket.bucket_name
}

output "tf_bucket_access_type" {
  description = "Access type of the bucket"
  value       = module.storage_bucket.bucket_access_type
}

output "tf_bucket_url" {
  description = "URL of the bucket"
  value       = module.storage_bucket.bucket_url
}


# -----------------------------------------------
# Outputs tf PAR
# -----------------------------------------------

output "par_id" {
  description = "The ID of the Pre-Authenticated Request"
  value       = module.object_storage_par.par_id
}

output "par_access_uri" {
  description = "The URI for accessing the object using this PAR"
  value       = module.object_storage_par.access_uri
  sensitive   = true
}

output "par_full_path" {
  description = "The full path of the Pre-Authenticated Request"
  value       = module.object_storage_par.full_path
  sensitive   = true
}

output "par_url" {
  value       = "https://objectstorage.${var.region}.oraclecloud.com${module.object_storage_par.access_uri}"
  description = "Full URL of the Pre-Authenticated Request"
  sensitive   = true # hides it from logs, use `tofu output par_url` to see it
}