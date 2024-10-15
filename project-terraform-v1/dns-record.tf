# Replace The Zone ID for the Route 53 hosted zone.
# The same domain name for the component will use in application config side.

# This resource creates a DNS 'A' record for the frontend component in Route 53.
resource "aws_route53_record" "frontend" {
  zone_id = "Z03000202RXSEVOPTHMK1"
  name    = "frontend-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


# This resource creates a DNS 'A' record for the mongodb component in Route 53.
resource "aws_route53_record" "mongodb" {
  zone_id = "Z03000202RXSEVOPTHMK1"
  name    = "mongodb-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}


# This resource creates a DNS 'A' record for the catalogue component in Route 53.
resource "aws_route53_record" "catalogue" {
  zone_id = "Z03000202RXSEVOPTHMK1"
  name    = "catalogue-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}


# This resource creates a DNS 'A' record for the redis component in Route 53.
resource "aws_route53_record" "redis" {
  zone_id = "Z03000202RXSEVOPTHMK1"
  name    = "redis-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}


# This resource creates a DNS 'A' record for the user component in Route 53.
resource "aws_route53_record" "user" {
  zone_id = "Z03000202RXSEVOPTHMK1"
  name    = "user-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


# This resource creates a DNS 'A' record for the cart component in Route 53.
resource "aws_route53_record" "cart" {
  zone_id = "Z03000202RXSEVOPTHMK1"
  name    = "cart-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}


# This resource creates a DNS 'A' record for the mysql component in Route 53.
resource "aws_route53_record" "mysql" {
  zone_id = "Z03000202RXSEVOPTHMK1"
  name    = "mysql-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}


# This resource creates a DNS 'A' record for the shipping component in Route 53.
resource "aws_route53_record" "shipping" {
  zone_id = "Z03000202RXSEVOPTHMK1"
  name    = "shipping-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}


# This resource creates a DNS 'A' record for the rabbitmq component in Route 53.
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z03000202RXSEVOPTHMK1"
  name    = "rabbitmq-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}


# This resource creates a DNS 'A' record for the payment component in Route 53.
resource "aws_route53_record" "payment" {
  zone_id = "Z03000202RXSEVOPTHMK1"
  name    = "payment-dev.learntechnology.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}