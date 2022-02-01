resource "azurerm_virtual_network" "myterraformnetwork" {
  name                = "myvnet"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = "er-tyjy"
}