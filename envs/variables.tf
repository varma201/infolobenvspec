variable "environment" {
  type = string

  validation {
    condition     = contains(["dev", "uat", "prod"], var.environment)
    error_message = "environment must be dev, uat, or prod."
  }
}

variable "tenancy_ocid" {
  description = "OCI tenancy OCID."
  type        = string
  sensitive   = true
}

variable "user_ocid" {
  description = "OCI user OCID."
  type        = string
  sensitive   = true
}

variable "fingerprint" {
  description = "Fingerprint of the OCI API key."
  type        = string
  sensitive   = true
}

variable "private_key_path" {
  description = "Path to the OCI API private key."
  type        = string
  sensitive   = true
}

variable "region" {
  description = "OCI region."
  type        = string
}