# HVN for HCP Network

## About

This module provision a [HashiCorp Virtual Network](https://cloud.hashicorp.com/docs/hcp/network) (HVN) for [HashiCorp Cloud Platform](https://cloud.hashicorp.com/) (HCP). It currently supports provisioning an HVN on Amazon Web Services (AWS) or Microsoft Azure.

## Usage

Provisioning a new HVN is as simple as inserting a module stanza like this one:

```HCL
module "my_hvn_aws" {
  source = "kral2/hvn/hcp"
  hvn_cidr = "172.25.16.0/20"
  hvn_id_prefix = "my-hvn"
  hcp_cloud_provider = "aws"
  hcp_region = "eu-central-1"
}
```

Note: This module uses the HCP Terraform provider, so you will need to refer to it in your Terraform configuration. See below.

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