module "my_hvn_aws" {
  source  = "kral2/hcp-network/hcp"
  hvn_cidr = "172.25.16.0/20"
  hvn_id_prefix = "my-hvn"
  hcp_cloud_provider = "aws"
  hcp_region = "eu-central-1"
}
