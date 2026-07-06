variable "network_interfaces" {
  description = "Map of network interfaces to create"
  type = map(object({
    name = string
    ip_configuration = object({
      name = string
      subnet_id = string
      private_ip_address_allocation = optional(string)
      public_ip_address_id = optional(string)
    })
    dns_servers = optional(list(string))
    enable_ip_forwarding = optional(bool)
    enable_accelerated_networking = optional(bool)
  }))
}

variable "location" {
  description = "Azure region"
  type = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type = string
}

variable "tags" {
  description = "Tags to apply to the network interfaces"
  type = map(string)
  default = {}
}