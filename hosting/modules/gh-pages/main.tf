# Route 53
data "aws_route53_zone" "selected" {
  name = var.hosted_zone_name
}

resource "aws_route53_record" "github_cname" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = var.domain_name
  type    = "CNAME"
  ttl     = 300
  records = ["${var.github_organization}.github.io"]
}
