# This resource creates a DNS 'A' record for the frontend component in Route 53.
resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "frontend-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


# This resource creates a DNS 'A' record for the mongodb component in Route 53.
resource "aws_route53_record" "mongodb" {
  zone_id = var.zone_id
  name    = "mongodb-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}


# This resource creates a DNS 'A' record for the catalogue component in Route 53.
resource "aws_route53_record" "catalogue" {
  zone_id = var.zone_id
  name    = "catalogue-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}


# This resource creates a DNS 'A' record for the redis component in Route 53.
resource "aws_route53_record" "redis" {
  zone_id = var.zone_id
  name    = "redis-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}


# This resource creates a DNS 'A' record for the user component in Route 53.
resource "aws_route53_record" "user" {
  zone_id = var.zone_id
  name    = "user-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


# This resource creates a DNS 'A' record for the cart component in Route 53.
resource "aws_route53_record" "cart" {
  zone_id = var.zone_id
  name    = "cart-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}


# This resource creates a DNS 'A' record for the mysql component in Route 53.
resource "aws_route53_record" "mysql" {
  zone_id = var.zone_id
  name    = "mysql-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}


# This resource creates a DNS 'A' record for the shipping component in Route 53.
resource "aws_route53_record" "shipping" {
  zone_id = var.zone_id
  name    = "shipping-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}


# This resource creates a DNS 'A' record for the rabbitmq component in Route 53.
resource "aws_route53_record" "rabbitmq" {
  zone_id = var.zone_id
  name    = "rabbitmq-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}


# This resource creates a DNS 'A' record for the payment component in Route 53.
resource "aws_route53_record" "payment" {
  zone_id = var.zone_id
  name    = "payment-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}