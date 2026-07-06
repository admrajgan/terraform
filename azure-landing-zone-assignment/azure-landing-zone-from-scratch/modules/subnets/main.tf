resource "azurerm_subnet" "subnet" {
  for_each             = var.subnets_map
  name                 = each.value.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = each.value.subnet_prefix
}