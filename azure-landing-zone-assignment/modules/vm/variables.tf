variable "resource_group_name" {
  description = "Name of resource group"
  type = string
}

variable "location" {
  description = "Azure region for the resources"
  type = string
}

variable "vms" {
  description = "Map of VM configurations"
  type = map(object({
    name = string
    size = string
    nic_name = string
    admin_username = string
    admin_password = string
    subnet_id = string
    private_ip_allocation = string
    os_disk = object({
      caching = string
      storage_account_type = string 
    })
    source_image = object({
      publisher = string
      offer = string
      sku = string
      version = string
    })
  }))
}