terraform {
  backend "azurerm" {
    use_azuread_auth     = true
    resource_group_name  = "rg-sai-az-demo"
    storage_account_name = "stgacttfstatedemo01"
    container_name       = "tfstate01"
    key                  = "sai-az-repo.tfstate"
  }
}

# The Azure identity used by GitHub Actions must have:
# - Contributor on the target subscription
# - Storage Blob Data Contributor on the backend storage account/container
