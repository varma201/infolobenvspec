output "par_id" {
  description = "ID of the pre-authenticated request."
  value       = oci_objectstorage_preauthrequest.this.id
}

output "access_uri" {
  description = "Access URI returned by OCI."
  value       = oci_objectstorage_preauthrequest.this.access_uri
  sensitive   = true
}

output "full_path" {
  description = "Full path returned by OCI for the PAR."
  value       = oci_objectstorage_preauthrequest.this.full_path
  sensitive   = true
}

output "par_name" {
  description = "Name of the pre-authenticated request."
  value       = oci_objectstorage_preauthrequest.this.name
}

output "access_type" {
  description = "Access type granted by the PAR."
  value       = oci_objectstorage_preauthrequest.this.access_type
}

output "object_name" {
  description = "Object name or prefix associated with the PAR."
  value       = var.object_name
}