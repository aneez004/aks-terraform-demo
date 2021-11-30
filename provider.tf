terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}
  # Configuration options
  #skip_provider_registration = true
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.service_principal_appid
  client_secret   = var.service_principal_password
}
