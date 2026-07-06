resource_groups = {
    rg1 = {
      name     = "rg-raj-dev"
      location = "East US"
    }
  }
vnets = {
    vnet1 = {
      name                = "vnet-dev"
      location            = "East US"
      resource_group_name = "rg-raj-dev"
      address_space       = ["10.0.0.0/16"]
    }
  }
snets = {
    snet1 = {
      name                = "frontend-subnet-dev"
      location            = "East US"
      resource_group_name = "rg-raj-dev"
      virtual_network_name = "vnet-dev"
      address_prefixes    = ["10.0.1.0/24"]
    }
    snet2 = {
      name                = "backend-subnet-dev"
      location            = "East US"
      resource_group_name = "rg-raj-dev"
      virtual_network_name = "vnet-dev"
      address_prefixes    = ["10.0.2.0/24"]
    }
  }