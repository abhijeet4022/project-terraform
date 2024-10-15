# This resource creates an AWS EC2 instance for frontend with CentOS 8.
resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"  # CentOS 8 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0243a82da6118ecb6"]  #  `allow-all` SG ID.

  tags = {
    Name = "frontend" # Component Name
  }
}

# This resource creates an AWS EC2 instance for mongodb with CentOS 8.
resource "aws_instance" "mongodb" {
  ami           = "ami-0b4f379183e5706b9"  # CentOS 8 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0243a82da6118ecb6"]  #  `allow-all` SG ID.

  tags = {
    Name = "mongodb" # Component Name
  }
}

# This resource creates an AWS EC2 instance for catalogue with CentOS 8.
resource "aws_instance" "catalogue" {
  ami           = "ami-0b4f379183e5706b9"  # CentOS 8 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0243a82da6118ecb6"]  #  `allow-all` SG ID.

  tags = {
    Name = "catalogue" # Component Name
  }
}

# This resource creates an AWS EC2 instance for redis with CentOS 8.
resource "aws_instance" "redis" {
  ami           = "ami-0b4f379183e5706b9"  # CentOS 8 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0243a82da6118ecb6"]  #  `allow-all` SG ID.

  tags = {
    Name = "redis" # Component Name
  }
}

# This resource creates an AWS EC2 instance for user with CentOS 8.
resource "aws_instance" "user" {
  ami           = "ami-0b4f379183e5706b9"  # CentOS 8 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0243a82da6118ecb6"]  #  `allow-all` SG ID.

  tags = {
    Name = "user" # Component Name
  }
}

# This resource creates an AWS EC2 instance for cart with CentOS 8.
resource "aws_instance" "cart" {
  ami           = "ami-0b4f379183e5706b9"  # CentOS 8 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0243a82da6118ecb6"]  #  `allow-all` SG ID.

  tags = {
    Name = "cart" # Component Name
  }
}

# This resource creates an AWS EC2 instance for mysql with CentOS 8.
resource "aws_instance" "mysql" {
  ami           = "ami-0b4f379183e5706b9"  # CentOS 8 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0243a82da6118ecb6"]  #  `allow-all` SG ID.

  tags = {
    Name = "mysql" # Component Name
  }
}

# This resource creates an AWS EC2 shipping for frontend with CentOS 8.
resource "aws_instance" "shipping" {
  ami           = "ami-0b4f379183e5706b9"  # CentOS 8 AMI
  instance_type = "t2.small"
  vpc_security_group_ids = ["sg-0243a82da6118ecb6"]  #  `allow-all` SG ID.

  tags = {
    Name = "shipping" # Component Name
  }
}

# This resource creates an AWS EC2 instance for rabbitmq with CentOS 8.
resource "aws_instance" "rabbitmq" {
  ami           = "ami-0b4f379183e5706b9"  # CentOS 8 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0243a82da6118ecb6"]  #  `allow-all` SG ID.

  tags = {
    Name = "rabbitmq" # Component Name
  }
}

# This resource creates an AWS EC2 instance for payment with CentOS 8.
resource "aws_instance" "payment" {
  ami           = "ami-0b4f379183e5706b9"  # CentOS 8 AMI
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0243a82da6118ecb6"]  #  `allow-all` SG ID.

  tags = {
    Name = "payment" # Component Name
  }
}
