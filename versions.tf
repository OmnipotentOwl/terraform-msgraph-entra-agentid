terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 2.31.0"
    }
    msgraph = {
      source  = "microsoft/msgraph"
      version = ">= 0.3.0"
    }
  }
  required_version = ">= 1.3.0"
}
