variable "namespace" {
  description = "OCI Object Storage namespace."
  type        = string
}

variable "bucket_name" {
  description = "Name of the Object Storage bucket."
  type        = string
}

variable "par_name" {
  description = "Name of the pre-authenticated request."
  type        = string
}



variable "access_type" {
  description = "Access type granted by the PAR."
  type        = string

  validation {
    condition = contains(
      [
        "ObjectRead",
        "ObjectWrite",
        "ObjectReadWrite",
        "AnyObjectRead",
        "AnyObjectReadWrite"
      ],
      var.access_type
    )

    error_message = "Invalid PAR access type."
  }
}

variable "object_name" {
  description = "Object name or object prefix allowed by the PAR."
  type        = string
  default     = null
  nullable    = true
}

variable "time_expires" {
  description = "PAR expiration time in RFC 3339 format."
  type        = string
}

variable "bucket_listing_action" {
  description = "Whether object listing is permitted."
  type        = string
  default     = "Deny"

  validation {
    condition = contains(
      ["Deny", "ListObjects"],
      var.bucket_listing_action
    )

    error_message = "bucket_listing_action must be Deny or ListObjects."
  }
}