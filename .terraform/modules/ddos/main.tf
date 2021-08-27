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

resource "azurerm_network_ddos_protection_plan" "ddos_plan" {
  location = var.location
  name = var.name
  resource_group_name = var.resource_group_name
}