
terraform {
  required_version = ">=1.10.0"
  
  cloud {
    organization = "flamingo-dev"
    
    workspaces {
      name = "shenanigans-tf"
    }
  }

  required_providers {
    discord = {
      source = "lucky3028/discord"
      version = "2.0.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "discord" {
  token = var.DISCORD_TOKEN
}
