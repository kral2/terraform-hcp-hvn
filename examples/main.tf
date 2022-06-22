module "my_hvn_aws" {
  source             = "kral2/network/hcp"
  hvn_cidr           = "10.0.1.0/24"
  hvn_id_prefix      = "my-hvn"
  hcp_cloud_provider = "aws"
  hcp_region         = "eu-central-1" // Paris, France
}

module "my_hvn_azure" {
  source             = "kral2/network/hcp"
  hvn_cidr           = "10.0.2.0/24"
  hvn_id_prefix      = "my-hvn"
  hcp_cloud_provider = "azure"
  hcp_region         = "francecentral" // Paris, France
}