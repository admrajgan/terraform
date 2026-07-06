variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "vnet_config" {
  description = "Configuration for virtual network and subnets"
  type = object({
    name          = string
    address_space = list(string)
    subnets       = map(object({
      name            = string
      address_prefixes = list(string)
    }))
  })
}
    
variable "network_security_groups" {
  description = "Configuration for network security groups"
  type = map(object({
    name = string
    security_rules = list(object({
      name                       = string
      priority                   = number
      direction                  = string
      access                     = string
      protocol                   = string
      source_port_range          = string
      destination_port_range     = string
      source_address_prefix      = string
      destination_address_prefix = string
    }))
  }))
  default = {} 
}

variable "nsg_subnet_associations" {
  description = "Map of NSG to subnet associations"
  type = map(object({
    subnet_key = string
    nsg_key = string
  }))
  default = {}
}

