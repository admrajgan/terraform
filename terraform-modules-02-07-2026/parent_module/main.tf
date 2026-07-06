module "resource_group" {
  source = "../child_modules/resource_group"
  rgs = {
    rg1 = {
      name     = "rg-raj"
      location = "East US"
    }
  }
}

module "virtual_network" {
  source = "../child_modules/vnet"
  depends_on = [ module.resource_group ]
  vnets = {
    vnet1 = {
      name                = "vnet-raj"
      location            = "East US"
      resource_group_name = "rg-raj"  //using implicit dependency here, as the resource group is created in the same plan
      address_space       = ["10.0.0.0/16"]
    }
  }
}

module "subnet" {
  source = "../child_modules/subnet"
  depends_on = [ module.virtual_network,module.resource_group ]
  snets = {
    snet1 = {
      name                = "frontend-subnet"
      location            = "East US"
      resource_group_name = "rg-raj"
      virtual_network_name = "vnet-raj"
      address_prefixes    = ["10.0.1.0/24"]
    }
    snet2 = {
      name                = "backend-subnet"
      location            = "East US"
      resource_group_name = "rg-raj"
      virtual_network_name = "vnet-raj"
      address_prefixes    = ["10.0.2.0/24"]
    }
  }
}