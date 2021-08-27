terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
  }
}

# Azure Virtual network
resource "azurerm_virtual_network" "vnet" {
  name = var.vnet_name
  location = var.location
  resource_group_name = var.resource_group_name
  address_space = var.vnet_address_space
  dns_servers = var.dns_servers

  ddos_protection_plan {
    id = var.ddos_id
    enable = true
  }

  tags = {
    environment = var.environment_tag
  }
}