terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.14.0" # Adjust version as needed
    }
  }
}

provider "vault" {
  address = "http://127.0.0.1:8200" # Replace with your Vault server address
  token   = var.vault_token         # Use a variable for security
}

