variable "name" {
  type        = string
  description = "Virtual Network name"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the parent resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "address_space" {
  type        = list(string)
  description = "VNet IP address CIDR blocks"
}