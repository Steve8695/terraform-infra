output "vnet" {
  value = azurerm_virtual_network.example-vnet.name
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}
