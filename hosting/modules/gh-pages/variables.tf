variable "hosted_zone_name" {
  description = "The name of the Route 53 hosted zone"
  type        = string
}

variable "domain_name" {
  description = "The domain name used to access the status page"
  type        = string
}

variable "github_organization" {
  description = "The name of the GitHub organization where to apply changes"
  type        = string
  default     = "kuzzleio"
}
