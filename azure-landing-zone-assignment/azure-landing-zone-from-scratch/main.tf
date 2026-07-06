terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# 1. Resource Group Module
module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.rg_name
  location = var.azure_location
}

# 2. Virtual Network Module
module "vnet" {
  source              = "./modules/vnet"
  name                = var.vnet_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  address_space       = var.vnet_space
}

# 3. Subnets Module (Passes the combined map down)
module "subnets" {
  source              = "./modules/subnets"
  resource_group_name = module.resource_group.name
  vnet_name           = module.vnet.name
  subnets_map         = var.workloads
}

# 4. Compute Module (Takes the output IDs map from Subnets)
module "vms" {
  source              = "./modules/vms"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  vms_map             = var.workloads
  subnet_ids          = module.subnets.subnet_ids
}