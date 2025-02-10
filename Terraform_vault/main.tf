resource "vault_generic_secret" "Terraform-vault-secret" {
  path = "secret/data/optimus/credentials" # Vault path for storing credentials

  data_json = jsonencode({
    username = "optimus_user"
    password = "optimus@12358"
  })
}

data "vault_generic_secret" "terraform_vault_secret" {
  path = "secret/data/optimus/credentials"
}
output "username" {
  value     = data.vault_generic_secret.terraform_vault_secret.data["username"]
  sensitive = true
}

output "password" {
  value     = data.vault_generic_secret.terraform_vault_secret.data["password"]
  sensitive = true
}