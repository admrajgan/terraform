azure_location = "Central India"
rg_name        = "rg-raj"
vnet_name      = "vnet-main"
vnet_space     = ["10.0.0.0/16"]

workloads = {
  "workload-a" = {
    subnet_name   = "frontend-subnet"
    subnet_prefix = ["10.0.1.0/24"]
    vm_name       = "vm-private-a"
    vm_size       = "Standard_B2ts_v2"
  },
  "workload-b" = {
    subnet_name   = "backend-subnet"
    subnet_prefix = ["10.0.2.0/24"]
    vm_name       = "vm-private-b"
    vm_size       = "Standard_B2ts_v2"
  }
}