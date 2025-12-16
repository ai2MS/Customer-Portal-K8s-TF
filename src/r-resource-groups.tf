# Resource Group for the portal
module "resource_group_main" {
  source  = "app.terraform.io/Kochasoft-Test/resource-group/azurerm"
  version = "1.1.0"

  name     = "${local.default_name}-RGrp-CEC-Mk8s"
  location = var.location

  tags = local.default_tags
}
