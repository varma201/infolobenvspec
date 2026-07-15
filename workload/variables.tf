variable "parent_compartment_id" {
  type = string
}

variable "environment" {
  type = string
}

variable "business_unit" {
  type = string
}

variable "vcn_cidr_blocks" {
  type = list(string)
}

variable "defined_tags" {
  type    = map(string)
  default = {}
}

variable "freeform_tags" {
  type    = map(string)
  default = {}
}

variable "enable_delete" {
  type    = bool
  default = false
}