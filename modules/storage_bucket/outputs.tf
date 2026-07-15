output "bucket_name" {
  description = "Name of the created bucket."
  value       = oci_objectstorage_bucket.this.name
}

output "bucket_access_type" {
  description = "Access type of the created bucket."
  value       = oci_objectstorage_bucket.this.access_type
}

output "bucket_url" {
  description = "URL of the OCI Object Storage bucket."

  value = format(
    "https://objectstorage.%s.oraclecloud.com/n/%s/b/%s",
    var.region,
    var.namespace,
    oci_objectstorage_bucket.this.name
  )
}

output "bucket_id" {
  description = "ID of the created bucket."
  value       = oci_objectstorage_bucket.this.id
}