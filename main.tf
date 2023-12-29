terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.74.0"
    }
  }
  cloud {
    organization = "self_learn_321"

  workspaces {
      name = "terraform_123"
    }

  }
}

provider "azurerm" { 
  features {}
}

resource "azurerm_resource_group" "terraform-rg" {
  count = 5
  location = "centralindia"
  name = "terraform-rg-${count.index}"
}
