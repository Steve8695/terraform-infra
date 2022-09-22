module "azurerm_resource_group" {
  source           = "github.com/Steve8695/terraform-infra.git//infra-modules//rg"
  resource_group   = var.resource_group
  location         = var.location
}

module "azurerm_virtual_network" {
  source         = "github.com/Steve8695/terraform-infra.git//infra-modules//vnet"
  resource_group = module.azurerm_resource_group.resource_group
  vnet           = var.vnet_name
}


module "azurerm_network_security_group" {
  source         = "github.com/Steve8695/terraform-infra.git//infra-modules//nsg"
  resource_group = module.azurerm_resource_group.resource_group
  sg_name        = var.sg_name
}

module "vmss" {
  source                    = "github.com/Steve8695/terraform-infra.git//infra-modules//vmss"
  location                  = var.location
  resource_group            = module.azurerm_resource_group.resource_group
  packer_resource_group_name= var.packer_resource_group_name
  packer_image_name         = var.packer_image_name
  admin_password            = var.admin_password
  subnet                    = module.azurerm_virtual_network.subnet_id
  }
