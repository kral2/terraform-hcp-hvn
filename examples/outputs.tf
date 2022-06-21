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