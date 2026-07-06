output "association_ids" {
  description = "Map of association keys to their IDs"
  value = { for k, v in azurerm_subnet_network_security_group_association.nsg_association : k => v.id }
}