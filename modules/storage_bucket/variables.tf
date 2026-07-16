variable "compartment_id" {
  description = "OCID of the compartment where the bucket will be created."
  type        = string
}

variable "namespace" {
  description = "OCI Object Storage namespace."
  type        = string
}

variable "bucket_name" {
  description = "Name of the Object Storage bucket."
  type        = string
}



variable "environment" {
  description = "Environment tag for the bucket."
  type        = string
}

variable "access_type" {
  description = "Access type of the bucket."
  type        = string
  default     = "NoPublicAccess"
}

variable "storage_tier" {
  description = "Storage tier of the bucket."
  type        = string
  default     = "Standard"
}

variable "versioning" {
  description = "Versioning status of the bucket."
  type        = string
  default     = "Enabled"
}

variable "managed_by" {
  description = "Tool managing the bucket."
  type        = string
  default     = "Terraform"
}
variable "region" {
  description = "OCI region where the bucket is created."
  type        = string
}

variable "freeform_tags" {
  description = "Free-form tags to apply to the resource."
  type        = map(string)
  default     = {}
}
