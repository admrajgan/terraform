output "subnet_ids" {
  description = "Map of subnet names to IDs"
  value = { for k, v in azurerm_subnet.subnet : k => v.id }
}

output "subnet_names" {
  description = "Map of subnet keys to names"
  value = { for k, v in azurerm_subnet.subnet : k => v.name }
}

output "subnet_address_prefixes" {
  description = "Map of subnet keys to address prefixes"
  value = { for k, v in azurerm_subnet.subnet : k => v.address_prefixes }
}