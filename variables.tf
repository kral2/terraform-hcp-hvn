variable "hvn_cidr" {
  description = "(String) The CIDR range of the HVN. If this is not provided, the service will provide a default value."
  type        = string
  default     = "" // default value is an empty string, because null is interpreted as a required input variable in the registry
}

variable "hcp_cloud_provider" {
  description = "(String) The provider where the HVN is located. Valid values are 'aws' or 'azure'."
  type        = string
  default     = "aws"
}

variable "hcp_region" {
  description = "(String) The region where the HVN is located."
  type        = string
  default     = "us-east-1"
}

variable "hvn_id" {
  description = "(String) The ID of the HashiCorp Virtual Network (HVN). Provide a value only if you prefer a predefined hvn_id. var.hvn_id_prefix will be ignored, no transformation will be made by the module to this string."
  type        = string
  nullable    = false
  default     = "" // default value is an empty string, because null is interpreted as a required input variable in the registry
}

variable "hvn_id_prefix" {
  description = "(String) A prefix for the ID of the HashiCorp Virtual Network (HVN). It will be concatenated with var.hcp_cloud_provider, var.hcp_region values and a 6 chars random string. Will be ignored if var.hvn_id is set."
  type        = string
  default     = "hvn"
}
