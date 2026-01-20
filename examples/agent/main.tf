terraform {
    required_version = ">= 1.9, < 2.0"
    required_providers {
        msgraph = {
            source  = "microsoft/msgraph"
            version = "0.3.0"
        }
        azuread = {
            source  = "hashicorp/azuread"
            version = ">= 2.31.0"
        }
        random = {
            source  = "hashicorp/random"
            version = "3.5.1"
        }
    }
}

resource "random_pet" "display_name" {
  length = 2
}

module "example" {
  source = "../../"

  app_display_name = "Sample Agent ${random_pet.display_name.id}"
  sign_in_audience = "AzureADMyOrg"
}   