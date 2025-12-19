# Azure Configuration Variables
variable "project" {
  description = "Project name (e.g., KSAI)"
  type        = string
  default     = "KSAI"
}

variable "cloud" {
  description = "Cloud provider abbreviation (e.g., AZR)"
  type        = string
  default     = "AZR"
}

variable "env" {
  description = "Environment name (e.g., DEV, PROD)"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Canada East"
}

variable "location_code" {
  description = "Azure region code"
  type        = string
  default     = "cae1"
}

variable "owner" {
  description = "Resource owner"
  type        = string
  default     = "terraform"
}

variable "virtual_network_address_space" {
  description = "Address space for the virtual network"
  type        = string
  nullable    = false
}

variable "virtual_network_virtual_machines_subnet_address_space" {
  description = "Address space for the virtual machines subnet of the virtual network"
  type        = string
  nullable    = false
}

variable "virtual_network_vault_subnet_address_space" {
  description = "Address space for the key vault subnet of the virtual network"
  type        = string
  nullable    = false
}

variable "virtual_machine_size" {
  description = "Size of the virtual machine"
  type        = string
  nullable    = false
  default     = "Standard_F8s_v2"
}

variable "virtual_machine_source_image_offer" {
  description = "Offer of the source image of the virtual machine"
  type        = string
  nullable    = false
  default     = "0001-com-ubuntu-server-jammy"
}

variable "virtual_machine_source_image_sku" {
  description = "SKU of the source image of the virtual machine"
  type        = string
  nullable    = false
  default     = "22_04-lts"
}

variable "virtual_machine_os_disk_storage_account_type" {
  description = "Storage account type of the os disk of the virtual machine"
  type        = string
  nullable    = false
  default     = "StandardSSD_LRS"
}
