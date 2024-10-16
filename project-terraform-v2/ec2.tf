# This resource creates an AWS EC2 instance for all components with CentOS 8.
resource "aws_instance" "instance" {
  for_each               = var.components
  ami                    = var.ami
  instance_type          = lookup(each.value, "instance_type", null)
  vpc_security_group_ids = var.sg
  tags                   = { Name = lookup(each.value, "name", null) }


  ebs_block_device {
    device_name           = "/dev/sda1"
    volume_size           = 10
    delete_on_termination = true
    tags                  = { Name = "${lookup(each.value, "name", null)}-os-disk" }
  }

}
