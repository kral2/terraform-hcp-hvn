module "my_hvn_aws" {
  source = "../"
  # source  = "kral2/hcp-network/hcp"
  # hvn_cidr = "172.25.16.0/20"
  hvn_id_prefix      = "my-hvn"
  hcp_cloud_provider = "aws"
  hcp_region         = "eu-central-1" // Paris, France
}

module "my_hvn_azure" {
  source = "../"
  # source  = "kral2/hcp-network/hcp"
  # hvn_cidr = "172.25.16.0/20"
  hvn_id_prefix      = "my-hvn"
  hcp_cloud_provider = "azure"
  hcp_region         = "francecentral" // Paris, France
}