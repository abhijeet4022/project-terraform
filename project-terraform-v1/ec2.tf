# This resource creates an AWS EC2 instance for frontend with CentOS 8.
resource "aws_instance" "frontend" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "frontend" # Component Name
  }
}

# This resource creates an AWS EC2 instance for mongodb with CentOS 8.
resource "aws_instance" "mongodb" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "mongodb" # Component Name
  }
}

# This resource creates an AWS EC2 instance for catalogue with CentOS 8.
resource "aws_instance" "catalogue" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "catalogue" # Component Name
  }
}

# This resource creates an AWS EC2 instance for redis with CentOS 8.
resource "aws_instance" "redis" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "redis" # Component Name
  }
}

# This resource creates an AWS EC2 instance for user with CentOS 8.
resource "aws_instance" "user" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "user" # Component Name
  }
}

# This resource creates an AWS EC2 instance for cart with CentOS 8.
resource "aws_instance" "cart" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "cart" # Component Name
  }
}

# This resource creates an AWS EC2 instance for mysql with CentOS 8.
resource "aws_instance" "mysql" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "mysql" # Component Name
  }
}

# This resource creates an AWS EC2 shipping for frontend with CentOS 8.
resource "aws_instance" "shipping" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "shipping" # Component Name
  }
}

# This resource creates an AWS EC2 instance for rabbitmq with CentOS 8.
resource "aws_instance" "rabbitmq" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "rabbitmq" # Component Name
  }
}

# This resource creates an AWS EC2 instance for payment with CentOS 8.
resource "aws_instance" "payment" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg

  tags = {
    Name = "payment" # Component Name
  }
}
