# Resource group configuration
variable "resource_group_name" {
  type    = string
  description = "(Required) Name of the resource group in which to create the virtual network."
}

variable "location" {
  type = string
  description = "(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
  default = "westeurope"
}

# Network resources
variable "ddos_id" {
  type = string
  description = "(Required) DDOS protection plan id"
}

variable "vnet_name" {
  type = string
  description = "(Required) Virtual network name"
}

variable "vnet_address_space" {
  type = list(string)
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
}

variable "dns_servers" {
  type = list(string)
  description = "(Required) DNS servers for the virtual network"
  default = ["8.8.8.8"]
}

variable "environment_tag" {
  type = string
  description = "(Optional) Environment tag"
  default = "Sandbox"
}