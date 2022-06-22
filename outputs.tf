
output "hcp_hvn_id" {
  description = "Hashicorp Cloud Platform HVN ID"
  value       = hcp_hvn.network.hvn_id
}

output "hcp_hvn_cidr_block" {
  description = "Hashicorp Cloud Platform CIDR block"
  value       = hcp_hvn.network.cidr_block
}

output "hcp_hvn_all_attributes" {
  description = "all attributes of the created HVN"
  value       = { for k, v in hcp_hvn.network : k => v }
}
