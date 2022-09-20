terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}
provider "azurerm" {
  features {}
}


resource "azurerm_virtual_network" "example-vnet" {
  name                = var.vnet
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = var.vnet_address_space
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = azurerm_virtual_network.example-vnet.name
  resource_group_name  = azurerm_virtual_network.example-vnet.resource_group_name
  address_prefixes       = ["10.0.1.0/24"]
}


