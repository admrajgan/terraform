variable "resource_group_name" {
  type        = string
}

variable "location" {
  type        = string
}

variable "subnet_ids" {
  type        = map(string)
  description = "Map passed from subnets output to align NICs with the correct subnet"
}

variable "vms_map" {
  type = map(object({
    vm_name = string
    vm_size = string
  }))
}