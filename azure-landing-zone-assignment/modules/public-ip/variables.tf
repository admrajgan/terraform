variable "public_ips" {
  description = "Map of Public IPs to create."
  type        = map(object({
    name = string
    allocation_method = string
  }))
}

variable "resource_group_name" {
  description = "Name of the resource group where the Public IPs will be created."
  type        = string
}

variable "location" {
  description = "Azure region where the Public IPs will be created."
  type        = string
}