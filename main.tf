# AWS Instance Creation

provider "aws" {
  region = lookup(var.aws_instance, "region")
  #access_key = ""
  #secret_key = ""
}

resource "aws_vpc" "sq-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    name = "sq-vpc"
  }
}

resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.sq-vpc.id

  tags = {
    Name = "gateway"
  }
}

resource "aws_subnet" "sq-subnet" {
  vpc_id     = aws_vpc.sq-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "sq-subnet"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id = aws_vpc.sq-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.sq-vpc.cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_network_interface" "test" {
  subnet_id       = aws_subnet.sq-subnet.id
  private_ips     = ["10.0.0.37"]
  security_groups = [aws_security_group.allow_ssh.id]

  attachment {
    instance     = aws_instance.server.id
    device_index = 1
  }
}

resource "aws_instance" "server" {
  ami           = lookup(var.aws_instance, "ami")
  instance_type = lookup(var.aws_instance, "instance_type")
  #count = lookup(var.aws_instance, "count")

  tags = {
    Name = lookup(var.aws_instance, "instance_name")
  }
  lifecycle {
    ignore_changes = [ami]
  }
}





