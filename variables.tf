#This file holds variables for the ec2 instance creation

variable "aws_instance" {
  default = {
    ami = "ami-02b92c281a4d3dc79"
    instance_type = "t2.micro"
    instance_name = "SQ-instance"
    count = "1"
    key_name = "id_rsa"
  }
}

variable "aws" {
  default = {
    region = "us-west-2"
  }
}



