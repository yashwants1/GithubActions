terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "test-rg"
    storage_account_name = "yteststg4343"
    container_name       = "test"
    key                  = "terraform.tfstate"
    subscription_id = "acd9510d-7e29-433d-8504-d10d34dba654"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "acd9510d-7e29-433d-8504-d10d34dba654"

}

resource "azurerm_resource_group" "rg" {
  name     = "y-rg"
  location = "East US"
}
