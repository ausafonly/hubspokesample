# General Configuration
variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
}

# Hub Configuration
variable "hub_vnet_name" {
  description = "Name of the Hub Virtual Network"
  type        = string
  default     = "vnet-hub"
}

variable "hub_vnet_address_space" {
  description = "Address space for the Hub Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "hub_subnets" {
  description = "Subnets for the Hub VNet"
  type = map(object({
    address_prefix = list(string)
  }))
  default = {
    GatewaySubnet       = { address_prefix = ["10.0.0.0/24"] }
    AzureFirewallSubnet = { address_prefix = ["10.0.1.0/24"] }
    shared-services     = { address_prefix = ["10.0.2.0/24"] }
  }
}

variable "hub_rg_name" {
  description = "Name of the hub resource group"
}

variable "hub_to_spoke_peering_name" {
  description = "Vnet peering name from spoke to hub"
  default     = "hub-to-spoke"
}

# Spoke Configuration
variable "spoke_vnet_name" {
  description = "Name of the Spoke Virtual Network"
  type        = string
  default     = "vnet-spoke"
}

variable "spoke_vnet_address_space" {
  description = "Address space for the Spoke Virtual Network"
  type        = list(string)
  default     = ["10.1.0.0/16"]
}

variable "spoke_subnet" {
  description = "Subnet for AKS in the Spoke VNet"
  type = object({
    name           = string
    address_prefix = list(string)
  })
  default = {
    name           = "aks-subnet"
    address_prefix = ["10.1.1.0/24"]
  }
}

variable "spoke_rg_name" {
  description = "Name of the hub resource group"
}

variable "spoke_to_hub_peering_name" {
  description = "Vnet peering name from spoke to hub"
  default     = "spoke-to-hub"
}

variable "spoke_aks_cluster_name" {
  description = "AKS Cluster name in spoke subscription"
}
