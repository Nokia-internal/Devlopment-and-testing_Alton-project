terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.80.0"
    }
  }

  backend "azurerm" {
    resource_group_name          = "rg-remotestatefile"
    storage_storage_account_name = "onewebstg"
    container_name               = "oneweb-container"
    key                          = "oneweb-statefile.tfstate"
  }

}

provider "azurerm" {
  features {}
}