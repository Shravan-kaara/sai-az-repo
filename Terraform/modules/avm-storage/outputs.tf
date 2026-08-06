output "storage_account_id" {
  description = "ID of the created Azure Storage Account."
  value       = azurerm_storage_account.storage.id
}

output "storage_account_name" {
  description = "Name of the created Azure Storage Account."
  value       = azurerm_storage_account.storage.name
}

output "storage_account_primary_blob_endpoint" {
  description = "The primary blob endpoint of the storage account."
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}

output "storage_account_primary_access_key" {
  description = "The primary access key for the storage account."
  value       = azurerm_storage_account.storage.primary_access_key
  sensitive   = true
}
