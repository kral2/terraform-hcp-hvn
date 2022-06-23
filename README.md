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

If you need more specific inputs, you can provide them as additional Input Variables in order to customize the HVN for your requirements.

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

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | >= 0.33.0 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [hcp_hvn.network](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/hvn) | resource |
| [random_string.hvn_id](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hcp_cloud_provider"></a> [hcp\_cloud\_provider](#input\_hcp\_cloud\_provider) | (String) The provider where the HVN is located. Valid values are 'aws' or 'azure'. | `string` | `"aws"` | no |
| <a name="input_hcp_region"></a> [hcp\_region](#input\_hcp\_region) | (String) The region where the HVN is located. | `string` | `"us-east-1"` | no |
| <a name="input_hvn_cidr"></a> [hvn\_cidr](#input\_hvn\_cidr) | (String) The CIDR range of the HVN. If this is not provided, the service will provide a default value. | `string` | `""` | no |
| <a name="input_hvn_id"></a> [hvn\_id](#input\_hvn\_id) | (String) The ID of the HashiCorp Virtual Network (HVN). Provide a value only if you prefer a predefined hvn\_id. var.hvn\_id\_prefix will be ignored, no transformation will be made by the module to this string. | `string` | `""` | no |
| <a name="input_hvn_id_prefix"></a> [hvn\_id\_prefix](#input\_hvn\_id\_prefix) | (String) A prefix for the ID of the HashiCorp Virtual Network (HVN). It will be concatenated with var.hcp\_cloud\_provider, var.hcp\_region values and a 6 chars random string. Will be ignored if var.hvn\_id is set. | `string` | `"hvn"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hcp_hvn_all_attributes"></a> [hcp\_hvn\_all\_attributes](#output\_hcp\_hvn\_all\_attributes) | all attributes of the created HVN |
| <a name="output_hcp_hvn_cidr_block"></a> [hcp\_hvn\_cidr\_block](#output\_hcp\_hvn\_cidr\_block) | Hashicorp Cloud Platform CIDR block |
| <a name="output_hcp_hvn_id"></a> [hcp\_hvn\_id](#output\_hcp\_hvn\_id) | Hashicorp Cloud Platform HVN ID |

<!-- END_TF_DOCS -->