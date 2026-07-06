output "vnet_id" {
  description = "ID of virtual network"
    value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "Name of virtual network"
  value = azurerm_virtual_network.vnet.name
}

output "subnet_ids" {
  description = "Map of IDs of subnets"
  value       = { for k, v in azurerm_subnet.subnets : k => v.id }
}

output "subnet_names" {
  description = "Map of subnet names"
  value = { for k, v in azurerm_subnet.subnets : k => v.name }
}

output "nsg_ids" {
  description = "Map of NSG IDs"
  value = { for k, v in azurerm_network_security_group.nsg : k => v.id }
}