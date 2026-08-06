output "resource_group_id" {
  description = "ID of the existing Azure resource group."
  value       = module.avm_vm.resource_group_id
}

output "resource_group_name" {
  description = "Name of the existing Azure resource group."
  value       = module.avm_vm.resource_group_name
}

output "vm_id" {
  description = "ID of the created Azure VM."
  value       = module.avm_vm.vm_id
}

output "vm_name" {
  description = "Name of the created Azure VM."
  value       = module.avm_vm.vm_name
}

output "public_ip_address" {
  description = "Public IP address of the created Azure VM."
  value       = module.avm_vm.public_ip_address
}
output "vm_2_id" {
  description = "ID of the second created Azure VM."
  value       = module.avm_vm_2.vm_id
}

output "vm_2_name" {
  description = "Name of the second created Azure VM."
  value       = module.avm_vm_2.vm_name
}

output "vm_2_public_ip_address" {
  description = "Public IP address of the second created Azure VM."
  value       = module.avm_vm_2.public_ip_address
}
