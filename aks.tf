resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.spoke_aks_cluster_name
  location            = azurerm_resource_group.spoke.location
  resource_group_name = azurerm_resource_group.spoke.name
  dns_prefix          = "aks"

  default_node_pool {
    name           = "default"
    node_count     = 2
    vm_size        = "Standard_DS2_v2"
    vnet_subnet_id = azurerm_subnet.spoke_aks_subnet.id
  }

  identity {
    type = "SystemAssigned"
  }
}
