# Output block to fetch public IPs for all EC2 instances
output "all_ec2_public_ips" {
  value = {
    frontend  = aws_instance.frontend.public_ip
    mongodb   = aws_instance.mongodb.public_ip
    catalogue = aws_instance.catalogue.public_ip
    redis     = aws_instance.redis.public_ip
    user      = aws_instance.user.public_ip
    cart      = aws_instance.cart.public_ip
    mysql     = aws_instance.mysql.public_ip
    shipping  = aws_instance.shipping.public_ip
    rabbitmq  = aws_instance.rabbitmq.public_ip
    payment   = aws_instance.payment.public_ip
  }
}
