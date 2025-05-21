
terraform {
  required_version = "1.12.0"
  
  cloud {
    organization = "flamingo.dev"
    
    workspaces {
      name = "shenanigans-tf"
    }
  }

  required_providers {
    source = "aequasi/discord"
    version = "0.0.4"
  }
}
