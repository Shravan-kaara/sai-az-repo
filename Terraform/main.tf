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

module "avm_vm_2" {
  source = "./modules/avm-vm"

  resource_group_name = var.resource_group_name
  location            = var.location
  vm_name             = var.vm_name_2
  vm_size             = var.vm_size_2
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  address_space       = var.address_space_2
  subnet_prefix       = var.subnet_prefix_2
  public_ip_sku       = var.public_ip_sku
  tags                = var.tags
}
