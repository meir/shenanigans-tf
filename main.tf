
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
      source = "chaotic-logic/discord"
      version = "0.0.1"
    }
    random {
      source = "hashicorp/random"
    }
  }
}

provider "discord" {
  token = var.DISCORD_TOKEN
}
