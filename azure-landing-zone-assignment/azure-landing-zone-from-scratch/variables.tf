variable "azure_location" { type = string }
variable "rg_name" { type = string }
variable "vnet_name" { type = string }
variable "vnet_space" { type = list(string) }

variable "workloads" {
  type = map(object({
    subnet_name   = string
    subnet_prefix = list(string)
    vm_name       = string
    vm_size       = string
  }))
}