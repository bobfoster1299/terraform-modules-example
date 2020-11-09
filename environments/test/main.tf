provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "robtest-rg"
    storage_account_name = "robstorage1299"
    container_name       = "rob-statefile2"
    key                  = "terraform.tfstate"
  }
}

locals {
  tags = {
    environment = var.environment
    project     = var.project
  }
}

module "resource_group" {
  source               = "../../modules/resource_group"
  resource_group       = var.resource_group
  location             = var.location
}

module "app_service" {
  source               = "../../modules/app_service"
  resource_group       = var.resource_group
  location             = var.location
  app_service_name     = var.app_service_name
  tags                 = var.tags
}
