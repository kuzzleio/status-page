terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.42.0"
    }

    github = {
      source  = "integrations/github"
      version = "~> 6.2.3"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.59.0"
    }
  }

  required_version = "~> 1.9"
}

provider "github" {
  owner = var.github_organization
}

provider "aws" {
  profile = "default"
  region = "eu-west-3"
}
