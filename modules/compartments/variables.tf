variable "parent_compartment_id" {
  description = "The OCID of the parent compartment or tenancy."
  type        = string
}

variable "environment" {
  description = "The environment name."
  type        = string

  validation {
    condition = contains(
      ["dev", "uat", "prod"],
      lower(var.environment)
    )

    error_message = "environment must be dev, stag, or prod."
  }
}

variable "business_unit" {
  description = "The business unit that owns the compartment."
  type        = string

  validation {
    condition     = length(trimspace(var.business_unit)) > 0
    error_message = "business_unit cannot be empty."
  }
}

variable "defined_tags" {
  description = "Optional OCI defined tags."
  type        = map(string)
  default     = {}
}

variable "freeform_tags" {
  description = "Optional free-form tags."
  type        = map(string)
  default     = {}
}

variable "enable_delete" {
  description = "Allow Terraform to delete the compartment."
  type        = bool
  default     = false
}