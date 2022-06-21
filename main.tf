// Create an HVN
resource "hcp_hvn" "network" {
  hvn_id         = local.hvn_id
  cloud_provider = var.hcp_cloud_provider
  region         = var.hcp_region
  cidr_block     = var.hvn_cidr
}

locals {
  hvn_id = "${var.hvn_id_prefix}-${var.hcp_cloud_provider}-${var.hcp_region}"
}