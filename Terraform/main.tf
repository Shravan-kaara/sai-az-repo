module "avm_vm" {
  source = "./modules/avm-vm"

  resource_group_name = var.resource_group_name
  location            = var.location
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  address_space       = var.address_space
  subnet_prefix       = var.subnet_prefix
  public_ip_sku       = var.public_ip_sku
  tags                = var.tags
}

module "avm_storage" {
  source = "./modules/avm-storage"

  resource_group_name      = var.resource_group_name
  location                 = var.location
  storage_account_name     = var.storage_account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
}
