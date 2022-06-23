variable "HCP_CLIENT_ID" {
  description = "(String) The OAuth2 Client ID for API operations."
  type        = string
  sensitive   = true
  default     = null
}

variable "HCP_CLIENT_SECRET" {
  description = "(String) The OAuth2 Client Secret for API operations."
  type        = string
  sensitive   = true
  default     = null
}
