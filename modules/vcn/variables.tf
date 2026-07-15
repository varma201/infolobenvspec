variable "compartment_id" {
  description = "OCID of the compartment where the VCN will be created."
  type        = string
}

variable "environment" {
  description = "Environment name."
  type        = string

  validation {
    condition = contains(
      ["dev", "uat", "prod"],
      lower(var.environment)
    )

    error_message = "environment must be dev, uat, or prod."
  }
}

variable "business_unit" {
  description = "Business unit that owns the VCN."
  type        = string
}

variable "cidr_blocks" {
  description = "CIDR blocks assigned to the VCN."
  type        = list(string)
}

variable "defined_tags" {
  description = "OCI defined tags."
  type        = map(string)
  default     = {}
}

variable "freeform_tags" {
  description = "OCI free-form tags."
  type        = map(string)
  default     = {}
}