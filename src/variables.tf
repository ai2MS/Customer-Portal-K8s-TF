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
  default     = "Canada Central"
}

variable "location_code" {
  description = "Azure region code"
  type        = string
  default     = "cac1"
}

variable "owner" {
  description = "Resource owner"
  type        = string
  default     = "terraform"
}
