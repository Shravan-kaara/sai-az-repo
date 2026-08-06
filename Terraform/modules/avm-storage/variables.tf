variable "resource_group_name" {
  description = "Name of the Azure resource group to manage."
  type        = string
}

variable "location" {
  description = "Azure region for the deployment."
  type        = string
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account (must be globally unique, 3-24 characters, lowercase letters and numbers)."
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium."
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Standard", "Premium"], var.account_tier)
    error_message = "account_tier must be either 'Standard' or 'Premium'."
  }
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
  type        = string
  default     = "LRS"

  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"], var.account_replication_type)
    error_message = "account_replication_type must be one of: LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS."
  }
}

variable "tags" {
  description = "Tags applied to managed resources."
  type        = map(string)
}
