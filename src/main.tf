# Terraform Configuration for AKS Deployment
terraform {
  required_version = "~> 1.0"

  cloud {
    workspaces {}
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.40.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

locals {
  # Get current timestamp for tagging
  current_time = formatdate("YYYY-MM-DD'T'HH:mm:ss'Z'", timestamp())

  default_tags = {
    # Core organizational tags
    Project     = var.project
    Environment = var.env
    Owner       = var.owner
    Cloud       = var.cloud
    ManagedBy   = "Terraform"

    # Audit tags
    CreatedAt     = local.current_time
    LastUpdatedAt = local.current_time
  }

  # Following naming convention: KSAI-AZR-DEV-EUS1-RGrp
  default_name    = "${upper(var.project)}-${upper(var.cloud)}-${upper(var.env)}-${upper(var.location_code)}"
  default_name_an = lower("${var.project}${var.cloud}${var.env}${var.location_code}")
}
