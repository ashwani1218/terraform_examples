terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.94.0"
    }
  }
}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "example-resources"
  location = "East Us"
}

resource "azurerm_virtual_network" "myterraformnetwork" {
  name                = "myvnet"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = "rg"
}