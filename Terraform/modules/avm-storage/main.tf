data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}

module "avm_res_storage_storageaccount" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"
  version = "0.7.4"

  name                            = var.storage_account_name
  location                        = var.location
  resource_group_name             = data.azurerm_resource_group.existing.name
  account_tier                    = var.account_tier
  account_replication_type        = var.account_replication_type
  https_traffic_only_enabled      = true
  public_network_access_enabled   = true
  shared_access_key_enabled       = true
  default_to_oauth_authentication = false

  tags = var.tags
}
