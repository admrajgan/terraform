output "nsg_ids" {
  description = "Map of NSG names to IDs"
  value = { for k, v in azurerm_network_security_group.nsg : k => v.id }
}

output "nsg_names" {
  description = "Map of NSG keys to names"
  value = { for k, v in azurerm_network_security_group.nsg : k => v.name }
}