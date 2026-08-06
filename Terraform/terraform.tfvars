resource_group_name = "rg-sai-az-demo"
location            = "eastus"
vm_name             = "vm-sai-demo"
vm_size             = "Standard_D2alds_v7"
admin_username      = "useradmin"
admin_password      = "P@ssw0rd@123"
public_ip_sku       = "Standard"
address_space       = "10.10.0.0/16"
subnet_prefix       = "10.10.1.0/24"

tags = {
  managed_by  = "terraform"
  environment = "dev"
}

# Storage Account configuration
storage_account_name     = "stgsaidemo"
account_tier             = "Standard"
account_replication_type = "LRS"
