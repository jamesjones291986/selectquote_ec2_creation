# AWS Instance Creation

provider "aws" {
  region = lookup(var.aws_instance, "region")
  #access_key = ""
  #secret_key = ""
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id = lookup(var.aws_security_group, "vpc_id")

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = lookup(var.aws_security_group, "cidr_blocks")
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




