data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}

module "avm_res_compute_virtualmachine" {
  source  = "Azure/avm-res-compute-virtualmachine/azurerm"
  version = "0.21.0"

  name                = var.vm_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.existing.name
  zone                = null
  os_type             = "Windows"
  sku_size            = var.vm_size

  account_credentials = {
    admin_credentials = {
      username                           = var.admin_username
      password                           = var.admin_password
      generate_admin_password_or_ssh_key = false
    }
    password_authentication_disabled = true
  }

  network_interfaces = {
    primary = {
      name = "nic-${var.vm_name}"
      ip_configurations = {
        ipconfig1 = {
          name                          = "ipconfig1"
          private_ip_address_allocation = "Dynamic"
          private_ip_subnet_resource_id = azurerm_subnet.main.id
          create_public_ip_address      = true
          public_ip_address_name        = "pip-${var.vm_name}"
        }
      }
    }
  }

  source_image_reference = {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }

  security_profile = {
    encryption_at_host_enabled = false
  }

  tags = var.tags
}

resource "azurerm_virtual_network" "main" {
  name                = "vnet-${var.vm_name}"
  address_space       = [var.address_space]
  location            = var.location
  resource_group_name = data.azurerm_resource_group.existing.name
  tags                = var.tags
}

resource "azurerm_subnet" "main" {
  name                 = "subnet-${var.vm_name}"
  resource_group_name  = data.azurerm_resource_group.existing.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [var.subnet_prefix]
}

resource "azurerm_network_security_group" "main" {
  name                = "nsg-${var.vm_name}"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.existing.name
  tags                = var.tags

  security_rule {
    name                       = "RDP"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "main" {
  subnet_id                 = azurerm_subnet.main.id
  network_security_group_id = azurerm_network_security_group.main.id
}

