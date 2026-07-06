variable "resource_group_name" {
  description = "Name of resource group"
  type        = string

  validation {
    condition     = length(var.resource_group_name) > 0 && length(var.resource_group_name) <= 90
    error_message = "Resource group name must not be empty and must be 90 characters or less."
  }
}

variable "location" {
  description = "Azure region where the resource group will be created"
  type        = string

  validation {
    condition     = contains(["eastus", "eastus2", "westus", "westus2", "centralus", "northcentralus", "southcentralus", "westcentralus", "canadacentral", "canadaeast", "uksouth", "ukwest", "centralindia", "southindia", "westindia"], lower(replace(var.location, " ", "")))
    error_message = "Invalid location. Please choose from: eastus, eastus2, westus, westus2, centralus, northcentralus, southcentralus, westcentralus, canadacentral, canadaeast, uksouth, ukwest, centralindia, southindia, westindia."
  }
}
