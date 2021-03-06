terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.8.0"
    }
  }
}
terraform {
  backend "azurerm" {
    resource_group_name  = "pratik-demo-resource-group"
    storage_account_name = "tfstate0029"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate2"
  }
}

provider "azurerm" {
  features {

  }
}
resource "azurerm_resource_group" "example" {

  name = var.rg_name

  location = var.rg_location
}
