output "nic_ids" {
  description = "Map of NIC keys to IDs"
  value       = { for k, v in azurerm_network_interface.nic : k => v.id }
}

output "nic_names" {
  description = "Map of NIC Keys to names"
  value = { for k, v in azurerm_network_interface.nic : k => v.name }
}
    
output "private_ip_addresses" {
  description = "Map of NIC keys to private IP addresses"
  value = { for k, v in azurerm_network_interface.nic : k => v.private_ip_address }
}