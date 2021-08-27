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
  features {}
}

resource "azurerm_resource_group" "rsg" {
  location = var.resource_group_location
  name = var.resource_group_name
  tags = {
    description = var.description
  }
}