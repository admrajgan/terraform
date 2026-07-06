module "resource_group" {
  source = "../../modules/resource_group"
  rgs = var.resource_groups
}

module "virtual_network" {
  source = "../../modules/vnet"
  depends_on = [ module.resource_group ]
  vnets = var.vnets
}

module "subnet" {
  source = "../../modules/subnet"
  depends_on = [ module.virtual_network,module.resource_group ]
  snets = var.snets
}