resource "azurerm_network_interface" "nic_vm" {
  name = "${var.vm-name}-nic"
  location = var.location
  resource_group_name = var.resource_group

  ip_configuration {
    name = "internal"
    subnet_id = var.subnet
    private_ip_address_allocation = "Dynamic"
  }
}

data "azurerm_resource_group" "image" {
  name                = var.packer_resource_group_name
}

data "azurerm_image" "image" {
  name                = var.packer_image_name
  resource_group_name = data.azurerm_resource_group.image.name
}

resource "azurerm_windows_virtual_machine" "win_vm" {
  name = var.vm-name
  resource_group_name = var.resource_group
  location = var.location
  size = var.size
  admin_username = var.admin_user
  admin_password = var.admin_password

  network_interface_ids = [
    azurerm_network_interface.nic_vm.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_id = data.azurerm_image.image.id

}
