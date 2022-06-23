# Provision a HVN using module's default values
# HVN will be created on AWS us-east-1 region
# using CIDR 172.25.16.0/20 and HVN_ID similar to my-hvn-aws-us-east-1-acb123
module "my_default_hvn" {
  source  = "kral2/network/hcp"
}

# Provision a HVN with custom parameters and HVN_ID on AWS
module "my_hvn_aws" {
  source             = "kral2/network/hcp"
  hvn_cidr           = "10.0.1.0/24"
  hvn_id             = "my-custom-hvn"
  hcp_cloud_provider = "aws"
  hcp_region         = "eu-central-1" // Paris, France
}

 # Provision a HVN with custom parameters and auto-generated HVN_ID on Azure
module "my_hvn_azure" {
  source             = "kral2/network/hcp"
  hvn_cidr           = "10.0.2.0/24"
  hvn_id_prefix      = "my-hvn"
  hcp_cloud_provider = "azure"
  hcp_region         = "francecentral" // Paris, France
}
