variable "resource_group_name" {
  description = "Name of the Azure resource group to manage."
  type        = string
}

variable "location" {
  description = "Azure region for the deployment."
  type        = string
}

variable "vm_name" {
  description = "Name of the Azure VM."
  type        = string
}

variable "vm_size" {
  description = "Size of the Azure VM."
  type        = string
}

variable "admin_username" {
  description = "Administrator username for the VM."
  type        = string
}

variable "admin_password" {
  description = "Administrator password for the VM."
  type        = string
  sensitive   = true
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = string
}

variable "subnet_prefix" {
  description = "Address prefix for the subnet."
  type        = string
}

variable "public_ip_sku" {
  description = "SKU for the public IP address."
  type        = string
  default     = "Standard"
}

variable "tags" {
  description = "Tags applied to managed resources."
  type        = map(string)
  default     = {}
}
