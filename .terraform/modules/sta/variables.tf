variable "resource_group_name" {
  type = string
  description = "(Required) Target resource group name"
}

variable "location" {
  type = string
  description = "(Required) Storage account location"
}

variable "sta_name" {
  type = string
  description = "(Required) Storage account name"
}

variable "account_tier" {
  type = string
  description = "(Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium"
  default = "Standard"
}

variable "account_replication_type" {
  type = string
  description = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
  default = "LRS"
}

variable "environment_tag" {
  type = string
  description = "(Optional) Environment tag"
  default = "Sandbox"
}