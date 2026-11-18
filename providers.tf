# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=5.7.0, < 6.0.0"
    }
  }
  backend "azurerm" {
    use_azuread_auth = true
    use_oidc = true

  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

