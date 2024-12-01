<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.12.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.12.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.aks](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/resources/kubernetes_cluster) | resource |
| [azurerm_resource_group.hub](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/resources/resource_group) | resource |
| [azurerm_resource_group.spoke](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.hub_subnets](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/resources/subnet) | resource |
| [azurerm_subnet.spoke_aks_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/resources/subnet) | resource |
| [azurerm_virtual_network.hub_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network.spoke_vnet](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network_peering.hub_to_spoke](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.spoke_to_hub](https://registry.terraform.io/providers/hashicorp/azurerm/4.12.0/docs/resources/virtual_network_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hub_rg_name"></a> [hub\_rg\_name](#input\_hub\_rg\_name) | Name of the hub resource group | `any` | n/a | yes |
| <a name="input_hub_subnets"></a> [hub\_subnets](#input\_hub\_subnets) | Subnets for the Hub VNet | <pre>map(object({<br/>    address_prefix = list(string)<br/>  }))</pre> | <pre>{<br/>  "AzureFirewallSubnet": {<br/>    "address_prefix": [<br/>      "10.0.1.0/24"<br/>    ]<br/>  },<br/>  "GatewaySubnet": {<br/>    "address_prefix": [<br/>      "10.0.0.0/24"<br/>    ]<br/>  },<br/>  "shared-services": {<br/>    "address_prefix": [<br/>      "10.0.2.0/24"<br/>    ]<br/>  }<br/>}</pre> | no |
| <a name="input_hub_to_spoke_peering_name"></a> [hub\_to\_spoke\_peering\_name](#input\_hub\_to\_spoke\_peering\_name) | Vnet peering name from spoke to hub | `string` | `"hub-to-spoke"` | no |
| <a name="input_hub_vnet_address_space"></a> [hub\_vnet\_address\_space](#input\_hub\_vnet\_address\_space) | Address space for the Hub Virtual Network | `list(string)` | <pre>[<br/>  "10.0.0.0/16"<br/>]</pre> | no |
| <a name="input_hub_vnet_name"></a> [hub\_vnet\_name](#input\_hub\_vnet\_name) | Name of the Hub Virtual Network | `string` | `"vnet-hub"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region for the resources | `string` | `"East US"` | no |
| <a name="input_spoke_aks_cluster_name"></a> [spoke\_aks\_cluster\_name](#input\_spoke\_aks\_cluster\_name) | AKS Cluster name in spoke subscription | `any` | n/a | yes |
| <a name="input_spoke_rg_name"></a> [spoke\_rg\_name](#input\_spoke\_rg\_name) | Name of the hub resource group | `any` | n/a | yes |
| <a name="input_spoke_subnet"></a> [spoke\_subnet](#input\_spoke\_subnet) | Subnet for AKS in the Spoke VNet | <pre>object({<br/>    name           = string<br/>    address_prefix = list(string)<br/>  })</pre> | <pre>{<br/>  "address_prefix": [<br/>    "10.1.1.0/24"<br/>  ],<br/>  "name": "aks-subnet"<br/>}</pre> | no |
| <a name="input_spoke_to_hub_peering_name"></a> [spoke\_to\_hub\_peering\_name](#input\_spoke\_to\_hub\_peering\_name) | Vnet peering name from spoke to hub | `string` | `"spoke-to-hub"` | no |
| <a name="input_spoke_vnet_address_space"></a> [spoke\_vnet\_address\_space](#input\_spoke\_vnet\_address\_space) | Address space for the Spoke Virtual Network | `list(string)` | <pre>[<br/>  "10.1.0.0/16"<br/>]</pre> | no |
| <a name="input_spoke_vnet_name"></a> [spoke\_vnet\_name](#input\_spoke\_vnet\_name) | Name of the Spoke Virtual Network | `string` | `"vnet-spoke"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aks_cluster_name"></a> [aks\_cluster\_name](#output\_aks\_cluster\_name) | Name of the AKS Cluster |
| <a name="output_hub_vnet_id"></a> [hub\_vnet\_id](#output\_hub\_vnet\_id) | ID of the Hub Virtual Network |
| <a name="output_spoke_vnet_id"></a> [spoke\_vnet\_id](#output\_spoke\_vnet\_id) | ID of the Spoke Virtual Network |
<!-- END_TF_DOCS -->