# 1. Specify the version of the AzureRM Provider to use
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.0.1"
    }
  }
}



# 2. Configure the AzureRM Provider
provider "azurerm" {
  features {}
}


# 3. Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West US 2"
}

# 4. Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = "example-resources"
  location            = "West US 2"
  address_space       = ["10.0.0.0/16"]
}
