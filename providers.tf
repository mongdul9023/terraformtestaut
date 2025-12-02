terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "cf30daf5-7bef-4d20-9a66-c8439c88df2e"
  #tenant_id = "d4033402-0d7d-430f-b2d5-d6c0ff78aab1"
}