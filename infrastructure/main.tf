terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.49.0"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

resource "azurerm_resource_group" "image_service" {
    name = "m25-${var.environment}-${var.location}-image-svc-rg"
    location = var.location
}