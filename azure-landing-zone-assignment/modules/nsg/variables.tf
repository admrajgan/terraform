variable "network_security_groups" {
  description = "Map of network security groups with their rules"
  type = map(object({
    name = string
    security_rules = list(object({
      name = string
      priority = number
      direction = string
      access = string
      protocol = string
      source_port_range = string
      destination_port_range = string
      destination_address_prefix = string
    }))
  }))
}

variable "location" {
  description = "The location of the network security group"
  type = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type = string
}