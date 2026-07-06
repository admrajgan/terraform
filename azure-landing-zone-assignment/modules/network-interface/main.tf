resource "azurerm_network_interface" "nic" {
  for_each = var.network_interfaces

  name                = each.value.name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                           = each.value.ip_configuration_name
    subnet_id                      = each.value.ip_configuration.subnet_id
    private_ip_address_allocation  = each.value.ip_configuration.private_ip_address_allocation
    public_ip_address_id           = each.value.ip_configuration.public_ip_address_id
  }

  dns_servers                    = lookup(each.value, "dns_servers", null)
  accelerated_networking_enabled = lookup(each.value, "enable_accelerated_networking", false)
  tags                           = var.tags
}