variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region (e.g., eastus)"
}

variable "hostpool_name" {
  type        = string
  description = "Name of the AVD Host Pool"
}
