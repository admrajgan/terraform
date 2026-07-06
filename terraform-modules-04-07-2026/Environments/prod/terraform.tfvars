resource_groups = {
    rg1 = {
      name     = "rg-raj-prod"
      location = "East US"
    }
  }
vnets = {
    vnet1 = {
      name                = "vnet-prod"
      location            = "East US"
      resource_group_name = "rg-raj-prod"
      address_space       = ["10.0.0.0/16"]
    }
  }
snets = {
    snet1 = {
      name                = "frontend-subnet-prod"
      location            = "East US"
      resource_group_name = "rg-raj-prod"
      virtual_network_name = "vnet-prod"
      address_prefixes    = ["10.0.1.0/24"]
    }
    snet2 = {
      name                = "backend-subnet-prod"
      location            = "East US"
      resource_group_name = "rg-raj-prod"
      virtual_network_name = "vnet-prod"
      address_prefixes    = ["10.0.2.0/24"]
    }
  }