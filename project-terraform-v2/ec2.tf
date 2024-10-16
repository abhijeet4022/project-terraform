variable "components" {
  description = "Map of application components with their names and instance types."
  default     = {
    frontend  = { name = "frontend", instance_type = "t2.micro" }
    mongodb   = { name = "mongodb", instance_type = "t2.micro" }
    catalogue = { name = "catalogue", instance_type = "t2.micro" }
    redis     = { name = "redis", instance_type = "t2.micro" }
    user      = { name = "user", instance_type = "t2.micro" }
    cart      = { name = "cart", instance_type = "t2.micro" }
    mysql     = { name = "mysql", instance_type = "t2.micro" }
    shipping  = { name = "shipping", instance_type = "t3.small" }
    rabbitmq  = { name = "rabbitmq", instance_type = "t2.micro" }
    payment   = { name = "payment", instance_type = "t2.micro" }
  }
}


# This resource creates an AWS EC2 instance for frontend with CentOS 8.
resource "aws_instance" "instance" {
  for_each = var.components
  ami                    = var.ami
  instance_type          = lookup(each.value, "instance_type", null)
  vpc_security_group_ids = var.sg

  tags = {
    Name = lookup(each.value, "name", null)
  }
}
