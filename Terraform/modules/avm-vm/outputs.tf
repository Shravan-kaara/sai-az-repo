output "resource_group_id" {
  description = "ID of the existing Azure resource group."
  value       = data.azurerm_resource_group.existing.id
}

output "resource_group_name" {
  description = "Name of the existing Azure resource group."
  value       = data.azurerm_resource_group.existing.name
}

output "vm_id" {
  description = "ID of the created Azure VM."
  value       = module.avm_res_compute_virtualmachine.resource_id
}

output "vm_name" {
  description = "Name of the created Azure VM."
  value       = module.avm_res_compute_virtualmachine.name
}

output "public_ip_address" {
  description = "Public IP address of the created Azure VM."
  value       = module.avm_res_compute_virtualmachine.virtual_machine_azurerm.public_ip_address
}
