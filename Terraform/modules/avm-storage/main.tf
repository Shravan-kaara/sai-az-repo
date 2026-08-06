data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = data.azurerm_resource_group.existing.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  https_traffic_only_enabled = true
  
  tags = var.tags
}
