# Azure resource group
variable "resource_group_name" {
  type = string
  description = "(Required) Resouce group name"
}

variable "resource_group_location" {
  type = string
  description = "(Optional) Resource group location"
  default = "westeurope"
}

variable "description" {
  type = string
  description = "(Required) Resource group description"
}