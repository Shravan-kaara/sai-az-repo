output "resource_group_id" {
  description = "ID of the existing Azure resource group."
  value       = data.azurerm_resource_group.existing.id
}

output "resource_group_name" {
  description = "Name of the existing Azure resource group."
  value       = data.azurerm_resource_group.existing.name
}