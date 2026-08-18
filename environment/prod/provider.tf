terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.80.0"
    }
  }

  backend "azurerm" {
    resource_group_name          = "prod-rg-remotestatefile"
    storage_storage_account_name = "prodonewebstg"
    container_name               = "prod-oneweb-container"
    key                          = "prod-oneweb-statefile.tfstate"
  }

}

provider "azurerm" {
  features {}
}