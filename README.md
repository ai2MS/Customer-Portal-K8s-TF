# Terraform module documentation 

This documentation is generated using [terraform-docs](https://terraform-docs.io/user-guide/introduction) 
and contains helpful information about the module's usage.

---

## 📦 Providers used

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 4.40.0 |

## 🧰 Requirements

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.40.0 |

## 🧩 Modules included

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_group_main"></a> [resource\_group\_main](#module\_resource\_group\_main) | app.terraform.io/Kochasoft-Test/resource-group/azurerm | 1.1.0 |

## 🏗️ Resources created

## Resources

| Name | Type |
|------|------|
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## 🔧 Inputs

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud"></a> [cloud](#input\_cloud) | Cloud provider abbreviation (e.g., AZR) | `string` | `"AZR"` | no |
| <a name="input_env"></a> [env](#input\_env) | Environment name (e.g., DEV, PROD) | `string` | `"dev"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure region | `string` | `"Canada Central"` | no |
| <a name="input_location_code"></a> [location\_code](#input\_location\_code) | Azure region code | `string` | `"cac1"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Resource owner | `string` | `"terraform"` | no |
| <a name="input_project"></a> [project](#input\_project) | Project name (e.g., KSAI) | `string` | `"KSAI"` | no |

## 📤 Outputs

## Outputs

No outputs.

---

## 📚 Useful links

References to relevant documentations.

- [Terraform](https://developer.hashicorp.com/terraform/docs)
- [Terraform azurerm provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Microsoft Azure](https://portal.azure.com)
- [Microsoft Entra](https://entra.microsoft.com)
- [Azure DevOps](https://dev.azure.com/sudheera-jayasinghe)
- [Azure resource naming](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming)
- [Azure resource abbreviations](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations) 