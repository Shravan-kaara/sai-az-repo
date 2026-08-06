variable "resource_group_name" {
  description = "Name of the Azure resource group to manage."
  type        = string
  default     = "rg-sai-az-demo"
}

variable "location" {
  description = "Azure region for the resource group."
  type        = string
  default     = "eastus"
}

variable "vm_name" {
  description = "Name of the Azure VM to create."
  type        = string
  default     = "vm-sai-demo"
}

variable "vm_size" {
  description = "Size of the Azure VM."
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Administrator username for the VM."
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Administrator password for the VM."
  type        = string
  sensitive   = true
  default     = null
}

variable "public_ip_sku" {
  description = "SKU for the public IP address."
  type        = string
  default     = "Standard"
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnet_prefix" {
  description = "Address prefix for the subnet."
  type        = string
  default     = "10.10.1.0/24"
}

variable "tags" {
  description = "Tags applied to managed resources."
  type        = map(string)
  default = {
    managed_by = "terraform"
  }
}
