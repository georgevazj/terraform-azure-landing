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

# Modules
module "az_workload" {
  source  = "app.terraform.io/georgevazj-lab/workload/azure"
  version = "0.0.15"

  akv_name = var.akv_name
  description = var.description
  resource_group_name = var.resource_group_name
  sta_name = var.sta_name
}

module "ddos" {
  source  = "app.terraform.io/georgevazj-lab/ddos/azure"
  version = "0.0.1"
  name = var.ddos_name
  resource_group_name = module.az_workload.resource_group_name
}

module "nsg" {
  source  = "app.terraform.io/georgevazj-lab/nsg/azure"
  version = "0.0.1"
  name = var.nsg_name
  resource_group_name = module.az_workload.resource_group_name
}

module "vnet" {
  source  = "app.terraform.io/georgevazj-lab/vnet/azure"
  version = "0.0.1"
  ddos_id = module.ddos.ddos_id
  resource_group_name = module.az_workload.resource_group_name
  vnet_address_space = var.vnet_address_space
  vnet_name = var.vnet_name
}

module "subnet" {
  source  = "app.terraform.io/georgevazj-lab/subnet/azure"
  version = "0.0.1"
  address_prefixes = var.snet_address_space
  resource_group_name = module.az_workload.resource_group_name
  subnet_name = var.snet_name
  vnet_name = module.vnet.vnet_name
}