locals {
  tfstate_bucket_name = "status-page.tfstate"
}

# Project
data "scaleway_account_project" "project" {
  name = var.project_name
}

# Object storage for Terraform state
resource "scaleway_object_bucket" "tfstate_bucket" {
  name       = local.tfstate_bucket_name
  project_id = data.scaleway_account_project.project.id
}

# Modules
module "gh-pages" {
  source = "./modules/gh-pages"

  hosted_zone_name = var.route53_hosted_zone_name
  domain_name      = var.domain_name
}
