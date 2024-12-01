resource "azurerm_resource_group" "spoke" {
  name     = var.spoke_rg_name
  location = var.location
}

resource "azurerm_virtual_network" "spoke_vnet" {
  name                = var.spoke_vnet_name
  address_space       = var.spoke_vnet_address_space
  location            = azurerm_resource_group.spoke.location
  resource_group_name = azurerm_resource_group.spoke.name
}

resource "azurerm_subnet" "spoke_aks_subnet" {
  name                 = var.spoke_subnet.name
  resource_group_name  = azurerm_resource_group.spoke.name
  virtual_network_name = azurerm_virtual_network.spoke_vnet.name
  address_prefixes     = var.spoke_subnet.address_prefix
}
