# Creating three simple HVNs

[Provisioning Infrastructure with Terraform]:https://www.terraform.io/docs/cli/run/index.html

This example illustrates how to use `terraform-hcp-network` module to create a HashiCorp Virtual Network on HCP.

Three HVN will be created:

- the first one, using module's default values: on AWS us-east-1 region using CIDR 172.25.16.0/20 and HVN_ID similar to my-hvn-aws-us-east-1-acb123
- the second, with custom parameters and HVN_ID on AWS
- and the third, with custom parameters and auto-generated HVN_ID on Azure

## Prerequisites

You will need to collect the following information before you start:

- your HCP provider authentication values

Follow [the HCP provider documentation](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/auth) for more details about how to generate a service principal on HCP.

## Using this example with Terraform CLI

Apply the example using the following commands:

```shell
> terraform init
> terraform plan
> terraform apply
```

See [Provisioning Infrastructure with Terraform] for more details about Terraform CLI and the available subcommands.
