output "hub_vnet_id" {
  description = "ID of the Hub Virtual Network"
  value       = azurerm_virtual_network.hub_vnet.id
}

output "spoke_vnet_id" {
  description = "ID of the Spoke Virtual Network"
  value       = azurerm_virtual_network.spoke_vnet.id
}

output "aks_cluster_name" {
  description = "Name of the AKS Cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}
