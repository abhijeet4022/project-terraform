variable "ami" {
  default     = "ami-0b4f379183e5706b9"
  description = "CentOS 8 AMI"
}
variable "instance_type" {
  default     = "t2.micro"
  description = "Instance Capacity"
}
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

