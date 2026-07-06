variable "nsg_subnet_association" {
  description = "Map of NSG to subnet association"
  type = map(object({
    nsg_id    = string
    subnet_id = string
  }))
}