resource "azurerm_virtual_network" "test" {
  name                = var.name
  location            = var.loc
  resource_group_name = var.rg
  address_space       = var.address
}