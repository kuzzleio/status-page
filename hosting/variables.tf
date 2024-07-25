variable "project_name" {
  description = "Name of the Scaleway project"
  type        = string
  default     = "default"
}

variable "github_organization" {
  description = "The name of the GitHub organization where to apply changes"
  type        = string
  default     = "kuzzleio"
}

variable "route53_hosted_zone_name" {
  description = "The name of the Route 53 hosted zone"
  type        = string
  default     = "kuzzle.io"
}

variable "domain_name" {
  description = "The domain name used to access the status page"
  type        = string
  default     = "status.kuzzle.io"
}
