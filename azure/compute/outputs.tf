output "resource_group" {
  value = azurerm_resource_group.rg.name
}
output "subnet" {
  value = azurerm_subnet.internal.name
}

output "network_interface" {
  value = azurerm_network_interface.ninterface.name
}


output "linux_vm_public_name" {
  value = azurerm_virtual_machine.main.name
}
