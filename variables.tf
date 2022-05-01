#This file holds variables for the ec2 instance creation

variable "aws" {
  default = {
    region = "us-west-2"
    ami = "ami-02b92c281a4d3dc79"
    instance_type = "t2.micro"
    instance_name = "SQ-instance"
    count = "1"
    vpc = "vpc-0fd8a920d78744614"
    security_groups = "default"
  }
}


