resource "aws_route53_zone" "internal" {
  name    = "chori.internal"
  comment = "${var.vpc_name} - Managed by Terraform"

  vpc {
    vpc_id = aws_vpc.default.id
  }
}

