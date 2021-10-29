variable "resource_group_name" {
  type = string
  description = "(Required) Resource group name"
}

# Azure Key vault
variable "akv_name" {
  type = string
  description = "(Required) Key Vault name"
}

# Azure storage account
variable "sta_name" {
  type = string
  description = "(Required) Storage account name"
}

variable "description" {
  type = string
  description = "(Required) Resource group description"
}

variable "nsg_name" {
  type = string
  description = "(Required) Network security group name"
}

variable "vnet_name" {
  type = string
  description = "(Required) Virtual network name"
}

variable "vnet_address_space" {
  type = list(string)
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
}

variable "snet_name" {
  type = string
  description = "(Required) Subnet name."
}

variable "snet_address_space" {
  type = list(string)
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
}