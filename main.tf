module "scaffold" {
  /*source    = "../terraform-module-scaffold/scaffold" */
  source = "github.com/chennavinay/terraform-module-scaffold"
} 

resource "azurerm_resource_group" "webapps" {
   name         = "webapps"
   location     = "${var.loc}"
   tags         = "${var.tags}"
}

resource "random_string" "webapprnd" {
  length  = 8
  lower   = true
  number  = true
  upper   = false
  special = false
}

locals {
    webappsperloc   = 3
}

/*
resource "azurerm_app_service_plan" "free" {
    count               = "${length(var.webapplocs)}"
    name                = "plan-free-${var.webapplocs[count.index]}"
    location            = "${var.webapplocs[count.index]}"
    resource_group_name = "${azurerm_resource_group.webapps.name}"
    tags                = "${azurerm_resource_group.webapps.tags}"

    kind                = "Linux"
    reserved            = true
    sku {
        tier = "Free"
        size = "F1"
    }
}
locals {
    app_regions     = [ "eastus2", "uksouth"]
    default_prefix  = "webapp-${var.tags["env"]}"
    app_prefix      = "${var.app_prefix != "" ? var.app_prefix : local.default_prefix}"
}

/*resource "azurerm_app_service" "citadel" {
    count               = "${length(local.app_regions)}"
    name                = "${format("%s-%s-%s", local.app_prefix, random_string.webapprnd.result, local.app_regions[count.index])}"
    location            = "${local.app_regions[count.index]}"
    resource_group_name = "${azurerm_resource_group.webapps.name}"
    tags                = "${azurerm_resource_group.webapps.tags}"

    app_service_plan_id = "${azurerm_app_service_plan.free.id}"
}

output "webapp_ids" {
  description = "web ids of the web apps provisoned."
  value       = "${azurerm_app_service.citadel.*.*}"
}*/