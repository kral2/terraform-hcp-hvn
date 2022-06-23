# HCP Network

## About

This module provision the virtual networking of your [HashiCorp Cloud Platform](https://cloud.hashicorp.com/) (HCP) account. It is designed to be flexible and composable with other modules.

It currently supports provisioning the following resources:

- an [HashiCorp Virtual Network](https://cloud.hashicorp.com/docs/hcp/network) (HVN) on Amazon Web Services (AWS) or Microsoft Azure.

Upcoming features: peering, gateways and routes.

## Usage

Provisioning a new HVN is as simple as inserting a module stanza like this one on your configuration:

```HCL
module "my_default_hvn" {
  source  = "kral2/network/hcp"
}
```

If you need more specific inputs, you can provide them to customize the HVN to fit your requirements.

```HCL
module "my_hvn_aws" {
  source = "kral2/network/hcp"
  hvn_cidr = "172.25.16.0/20"
  hvn_id_prefix = "my-hvn"
  hcp_cloud_provider = "aws"
  hcp_region = "eu-central-1"
}
```

Note: This module uses the HCP Terraform provider, which requires to be authenticated before you can use it. See below on how to declare it in your Terraform configuration.

### Declaring the HCP Terraform provider in your configuration

Assuming you would pass HCP authentication details through Terraform variables, you would need to add a provider stanza similar to this one:

```HCL
provider "hcp" {
  client_id     = var.HCP_CLIENT_ID
  client_secret = var.HCP_CLIENT_SECRET
}
```

Note: To authenticate Terraform with the HCP provider, you first need to create a service principal on HCP, so you can get an OAuth2 Client ID and Client Secret. Follow [the HCP provider documentation](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/auth) for more details about how to generate a service principal on HCP.

<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->