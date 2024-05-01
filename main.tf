terraform {
  required_version = ">= 1.5.7"
  backend "azurerm" {
    resource_group_name  = "tfstate8739"
    storage_account_name = "tfstor9839"
    container_name       = "jenkinstfstate"
    key                  = "jenkinstfstate.tfstate"
    access_key = "HGx1gat7UHLSrLomfAec+vUfVCzlKyq+G9++jYpzClaHWcGhYKR7KSnocgvx1unTQ+lqy5qTo+vD+AStLB6K5Q=="
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "testrg" {
  name     = "github-sarat-rg"
  location = "eastus"
}