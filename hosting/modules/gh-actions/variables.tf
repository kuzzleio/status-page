variable "github_repository" {
  description = "The of the GitHub repository where the status page code is hosted"
  type        = string
}

variable "variables" {
  description = "The GitHub Actions variables to add to the repository"
  type        = map(string)
}

variable "secrets" {
  description = "The GitHub Actions secrets to add to the repository"
  type        = map(string)
}
