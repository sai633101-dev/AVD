resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_desktop_host_pool" "hostpool" {
  name                = var.hostpool_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  
  type               = "Pooled"
  load_balancer_type = "BreadthFirst"
}
