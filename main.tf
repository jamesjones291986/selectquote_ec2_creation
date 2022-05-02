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

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id = aws_vpc.sq-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
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

resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.sq-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "sq-subnet"
  }
}

resource "aws_instance" "server" {
  ami           = lookup(var.aws_instance, "ami")
  instance_type = lookup(var.aws_instance, "instance_type")
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id = aws_subnet.subnet.id
  availability_zone = lookup(var.aws_instance, "availability zone")

  #count = lookup(var.aws_instance, "count")

  tags = {
    Name = lookup(var.aws_instance, "instance_name")
  }
  lifecycle {
    ignore_changes = [ami]
  }
}





