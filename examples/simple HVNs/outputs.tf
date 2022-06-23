output "my_default_hvn" {
  description = "HVN Information summary"
  value = {
    hcp_hvn_id             = module.my_default_hvn.hcp_hvn_id
    hcp_hvn_cidr_block     = module.my_default_hvn.hcp_hvn_cidr_block
    hcp_hvn_cloud_provider = module.my_default_hvn.hcp_hvn_all_attributes.cloud_provider
    hcp_hvn_region         = module.my_default_hvn.hcp_hvn_all_attributes.region
  }
}

output "my_hvn_aws" {
  description = "HVN Information summary"
  value = {
    hcp_hvn_id             = module.my_hvn_aws.hcp_hvn_id
    hcp_hvn_cidr_block     = module.my_hvn_aws.hcp_hvn_cidr_block
    hcp_hvn_cloud_provider = module.my_hvn_aws.hcp_hvn_all_attributes.cloud_provider
    hcp_hvn_region         = module.my_hvn_aws.hcp_hvn_all_attributes.region
  }
}

output "my_hvn_azure" {
  description = "HVN Information summary"
  value = {
    hcp_hvn_id             = module.my_hvn_azure.hcp_hvn_id
    hcp_hvn_cidr_block     = module.my_hvn_azure.hcp_hvn_cidr_block
    hcp_hvn_cloud_provider = module.my_hvn_azure.hcp_hvn_all_attributes.cloud_provider
    hcp_hvn_region         = module.my_hvn_azure.hcp_hvn_all_attributes.region
  }
}
