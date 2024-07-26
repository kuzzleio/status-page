# GitHub
resource "github_actions_secret" "secrets" {
  for_each = var.secrets

  repository       = var.github_repository
  secret_name      = each.key
  plaintext_value  = each.value
}
