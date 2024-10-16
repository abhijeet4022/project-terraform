variable "sg" {
  default     = ["sg-0243a82da6118ecb6"]
  description = "`allow-all` SG ID."
}

# Replace The Zone ID for the Route 53 hosted zone.
# The same domain name for the component will use in application config side.

variable "zone_id" {
  default     = "Z03000202RXSEVOPTHMK1"
  description = "The Zone ID for the Route 53 hosted zone."
}

# Component Variables
variable "components" {
  description = "Map of application components with their names and instance types."
  default = {
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

