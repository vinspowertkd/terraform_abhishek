provider "aws" {
    region = "eu-north-1"
}

variable "ami" {
  description = "This is AMI for the instance"
}

variable "instance_type" {
  description = "This is the instance type, for example: t2.micro"
}

resource "aws_instance" "example" {
    ami = var.ami
    instance_type = var.instance_type
}

output "public_ip" {
  value = aws_instance.example.public_ip
}