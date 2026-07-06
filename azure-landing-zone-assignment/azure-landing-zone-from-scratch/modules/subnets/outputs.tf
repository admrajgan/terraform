output "subnet_ids" {
  value = { for k, s in azurerm_subnet.subnet : k => s.id }
  description = "Map containing workload keys and matching Subnet IDs"
}