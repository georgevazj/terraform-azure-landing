output "resource_group" {
  value = module.az_workload.resource_group_name
}

output "vnet_name" {
  value = module.vnet.vnet_name
}

output "vnet_address" {
  value = module.vnet.vnet_address_space
}

output "subnet_name" {
  value = module.subnet.subnet_name
}

output "subnet_address" {
  value = module.subnet.subnet_address_prefixes
}