module "child" {
  source        = "../vnet"
  name          = "modvnet"
  resourcegroup = "user-vcom"
  location      = "East us"
  address       = ["10.0.1.0/16"]
}