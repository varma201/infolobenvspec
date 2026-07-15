# -----------------------------------------------
# Provider and authentication variables
# -----------------------------------------------
variable "tenancy_ocid" {
  description = "OCID of the OCI tenancy."
  type        = string
}

variable "user_ocid" {
  description = "OCID of the OCI user."
  type        = string
}

variable "fingerprint" {
  description = "Fingerprint for the OCI API key."
  type        = string
}

variable "private_key_path" {
  description = "Local path to the OCI API private key PEM file."
  type        = string
  default     = "~/.oci/oci_api_key.pem"
}

variable "region" {
  description = "OCI region to create resources in."
  type        = string
  default     = "us-chicago-1"
}
# -----------------------------------------------
# Object Storage bucket variables
# -----------------------------------------------
variable "compartment_ocid" {
  description = "OCID of the compartment where the bucket will be created."
  type        = string
}



variable "bucket_name" {
  description = "Name of the Object Storage bucket."
  type        = string
  default     = "my-terraform-bucket"
}

variable "bucket_access_type" {
  description = "Access type for the Object Storage bucket."
  type        = string
  default     = "NoPublicAccess"
}

variable "bucket_storage_tier" {
  description = "Storage tier for the Object Storage bucket."
  type        = string
  default     = "Standard"
}

variable "bucket_versioning" {
  description = "Versioning setting for the Object Storage bucket."
  type        = string
  default     = "Enabled"
}

variable "bucket_managed_by" {
  description = "ManagedBy tag for the Object Storage bucket."
  type        = string
  default     = "Terraform"
}

variable "environment" {
  description = "Environment tag to apply to resources (e.g. dev, staging, prod)."
  type        = string
}


# -----------------------------------------------
# Pre-Authenticated Request (PAR) variables
# -----------------------------------------------
variable "par_name" {
  description = "Name of the PAR object."
  type        = string
  default     = "terraform.tfstate"
}

variable "par_access_type" {
  description = "Access type for the PAR."
  type        = string
  default     = "ObjectReadWrite"
}

variable "par_object_name" {
  description = "Object name used for the PAR."
  type        = string
  default     = "terraform.tfstate"
}

variable "par_time_expires" {
  description = "Expiration time for the PAR in RFC 3339 format."
  type        = string
  default     = "2027-06-22T00:00:00Z"
}
variable "par_object_prefix" {
  description = "Object prefix allowed by the PAR."
  type        = string
}