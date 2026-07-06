variable "resource_group_name" {
  type        = string
  description = "Name of the parent resource group"
}

variable "vnet_name" {
  type        = string
  description = "Name of the parent VNet"
}

variable "subnets_map" {
  type = map(object({
    subnet_name   = string
    subnet_prefix = list(string)
  }))
  description = "Map profile tracking subnet configurations"
}