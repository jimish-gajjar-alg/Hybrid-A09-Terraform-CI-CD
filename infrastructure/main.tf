terrafor m {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  feature s {}
}

resour ce "azurerm_resource_group" "rg" {
  name     = "HybridA09RG "
  location = "East US"
}
