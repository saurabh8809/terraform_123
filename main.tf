terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.74.0"
    }
  }
}

resource "azurerm_resource_group" "terraform-rg" {
  count = 5
  location = "centralindia"
  name = "terraform-rg-${count.index}"
}
