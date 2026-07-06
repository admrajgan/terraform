resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_config.name
  address_space       = var.vnet_config.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
  
}

resource "azurerm_subnet" "subnets" {
 for_each = var.vnet_config.subnets 
  name                 = each.value.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = each.value.address_prefixes
}

resource "azurerm_network_security_group" "nsg" {
    for_each = var.network_security_groups
    name                = each.value.name
    location            = var.location
    resource_group_name = var.resource_group_name
    dynamic "security_rule" {
        for_each = each.value.security_rules
        content {
            name                       = security_rule.value.name
            priority                   = security_rule.value.priority
            direction                  = security_rule.value.direction
            access                     = security_rule.value.access
            protocol                   = security_rule.value.protocol
            source_port_range          = security_rule.value.source_port_range
            destination_port_range     = security_rule.value.destination_port_range
            source_address_prefix      = security_rule.value.source_address_prefix
            destination_address_prefix = security_rule.value.destination_address_prefix
        }
    }   
}

resource "azurerm_subnet_network_security_group_association" "nsg_associations" {
    for_each = var.nsg_subnet_associations
    
    subnet_id                 = azurerm_subnet.subnets[each.value.subnet_key].id
    network_security_group_id = azurerm_network_security_group.nsg[each.value.nsg_key].id
  
}