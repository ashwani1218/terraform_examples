resource "azurerm_storage_container" "storagecontainer" {
  name                  = "mycontainer"
  storage_account_name  = azurerm_storage_account.storageaccount.name
  container_access_type = "private"
}