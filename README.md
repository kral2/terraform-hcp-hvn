# HCP Network

## About

This module provision a HashiCorp Virtual Network (HVN) on HCP (HashiCorp Cloud Platform). It supports provisioning an HVN on AWS or Azure.

You can provision a new HVN as simple as this:

```HCL
module "aws_hvn" {
  source = "kral2/hcp-network/hcp"
}
```

<!-- BEGIN_TF_DOCS -->

<!-- END_TF_DOCS -->