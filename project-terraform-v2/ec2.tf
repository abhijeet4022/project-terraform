# This resource creates an AWS EC2 instance for all components with CentOS 8.
resource "aws_instance" "instance" {
  for_each               = var.components
  ami                    = var.ami
  instance_type          = lookup(each.value, "instance_type", null)
  vpc_security_group_ids = var.sg


  tags = {
    Name = lookup(each.value, "name", null)
  }


  ebs_block_device {
    device_name           = "/dev/sda1"  # Recommended for CentOS
    volume_size           = 10             # Specify the size in GiB
    delete_on_termination = true           # Delete the volume when the instance is terminated



    tags = {
      Name = "${lookup(each.value, "name", null)}-os-disk"  # Assign a name to the OS disk
    }
  }
}

# This resource creates a DNS 'A' record for the component in Route 53.
resource "aws_route53_record" "records" {
  for_each = var.components
  zone_id  = var.zone_id
  name     = "${lookup(each.value, "name", null)}.learntechnology.cloud"
  type     = "A"
  ttl      = 30
  records  = [lookup(lookup(aws_instance.instance, each.key, null ), "private_ip", null)]
}
