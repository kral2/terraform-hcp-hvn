variable "hvn_id_prefix" {
  description = "(String) The prefix for ID of the HashiCorp Virtual Network (HVN), to be concatenated with hcp cloud provider and hcp region values."
  type        = string
  default     = "my-hvn"
}

variable "hcp_cloud_provider" {
  description = "(String) The provider where the HVN is located. Only 'aws' or 'azure' are available at this time."
  type        = string
  default     = "aws"
}

variable "hcp_region" {
  description = "(String) The region where the HVN is located."
  type        = string
  default     = "eu-central-1"
}

variable "hvn_cidr" {
  description = "((String) The CIDR range of the HVN. If this is not provided, the service will provide a default value."
  type        = string
  default     = null
}
