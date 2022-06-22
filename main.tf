// Create an HVN
resource "hcp_hvn" "network" {
  hvn_id         = local.hvn_id
  cloud_provider = var.hcp_cloud_provider
  region         = var.hcp_region
  cidr_block     = local.cidr_block
}

locals {
  // Build hvn_id by concatenating user <user supplied prefix> + <cloud provider> + <hcp region>. E.g: my-hvn-aws-eu-central-1
  // Will be used only if var.hvn_id is not defined.
  // This gives choice to use a consistent naming pattern when user provides a value for var.hvn_id_prefix,
  // or use a fully custom value to comply with a particular naming convention in place. 
  hvn_id = length(var.hvn_id) != 0 ? var.hvn_id : "${var.hvn_id_prefix}-${var.hcp_cloud_provider}-${var.hcp_region}"

  // having null as default value makes the input variable 'required' which is not the the intention.
  // when passing null (module's default value), hvn_cidr is automatically set by the provider (currently 172.25.16.0/20 on both AWS and Azure).
  // We want to preserve this behavior.
  // If needing a specific value is passed for hvn_cidr, it will take precedence over the null value
  cidr_block = length(var.hvn_cidr) != 0 ? var.hvn_id : null
}
