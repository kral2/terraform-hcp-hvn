module "my_hvn_aws" {
  source  = "app.terraform.io/hashikral/hvn/hcp"
  hvn_cidr = "172.25.16.0/20"
  hvn_id_prefix = "my-hvn"
  hcp_cloud_provider = "aws"
  hcp_region = "eu-central-1"
}

output "hcp_hvn_id" {
  value = module.my_hvn_aws.hcp_hvn_id
}

output "hcp_hvn_cidr_block" {
  value = module.my_hvn_aws.hcp_hvn_cidr_block
}

output "hcp_hvn_cloud_provider" {
  value = module.my_hvn_aws.hcp_hvn_all_attributes.cloud_provider
}

output "hcp_hvn_region" {
  value = module.my_hvn_aws.hcp_hvn_all_attributes.region
}
