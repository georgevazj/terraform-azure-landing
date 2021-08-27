variable "resource_group_name" {
  type    = string
  description = "(Required) Name of the resource group in which to create the virtual network."
}

variable "vnet_name" {
  type = string
  description = "(Required) Virtual network name"
}

variable "subnet_name" {
  type = string
  description = "(Required) Virtual network name"
}

variable "address_prefixes" {
  type = list(string)
  description = "(Required) The address prefixes to use for the subnet."
}