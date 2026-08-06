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

variable "tags" {
  description = "Tags applied to managed resources."
  type        = map(string)
  default = {
    managed_by = "terraform"
  }
}
