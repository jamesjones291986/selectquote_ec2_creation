#This file holds variables for the ec2 instance creation

variable "aws_instance" {
  default = {
    region = "us-west-2"
    ami = "ami-02b92c281a4d3dc79"
    instance_type = "t2.micro"
    instance_name = "SQ-instance"
    count = "1"
  }
}



