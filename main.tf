terraform {
  required_providers {
    hcp = {
      source = "hashicorp/hcp"
      version = "0.94.0"
    }
  }
}

provider "hcp" {}

data "hcp_vault_secrets_secret" "demo_secret" {
  app_name = "DemoApp"
  secret_name = "TEST_SECRET"
}

output "secret" {
  value = data.hcp_vault_secrets_secret.demo_secret.secret_value
}