variable "subnets" {
  description = "Map of subnets to create"
  type = map(object({
    name = string
    address_prefixes = list(string)
    service_endpoints = optional(list(string))
    delegation = object({
      name = string
      service_name = string
    })
  }))
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type = string
}