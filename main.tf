# AWS Instance

resource "aws_instance" "server" {
  ami           = lookup(var.aws, "ami")
  instance_type = lookup(var.aws, "instance_type")
  availability_zone = lookup(var.aws, "region")

  tags = {
    Name = lookup(var.aws, "instance_name")
  }
}


