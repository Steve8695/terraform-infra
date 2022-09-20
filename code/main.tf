module "azurerm_resource_group" {
  source           = "../infra-modules/rg"
  resource_group   = "testkjdsk"
  location         = "eastus"
}

module "azurerm_virtual_network" {
  source         = "../infra-modules/vnet"
  resource_group = module.azurerm_resource_group.resource_group
  vnet           = "steve-vnet"
}


module "azurerm_network_security_group" {
  source         = "../infra-modules/nsg"
  resource_group = module.azurerm_resource_group.resource_group
  sg_name        = "steve-sg"
}

module "vmss" {
  source                    = "../infra-modules/vmss"
  location                  = "eastus"
  resource_group            = module.azurerm_resource_group.resource_group
  packer_resource_group_name= "packerGroup"
  packer_image_name         = "myPackerImage"
  admin_password            = "Darkknight@123"
  subnet                    = module.azurerm_virtual_network.subnet_id
  }