# AWS Instance

provider "aws" {
  region = lookup(var.aws, "region")
}

resource "aws_instance" "server" {
  ami           = lookup(var.aws, "ami")
  instance_type = lookup(var.aws, "instance_type")

  tags = {
    Name = lookup(var.aws, "instance_name")
  }
  lifecycle {
    ignore_changes = [ami]
  }
}




