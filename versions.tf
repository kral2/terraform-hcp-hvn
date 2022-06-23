terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = ">= 0.33.0"
    }
  }
  required_version = ">= 1.2.0"
}