terraform {
  backend "azurerm" {
    use_azuread_auth     = true
    resource_group_name  = "rg-sai-az-demo"
    storage_account_name = "stgacttfstatedemo01"
    container_name       = "tfstate01"
    key                  = "sai-az-repo.tfstate"
  }
}