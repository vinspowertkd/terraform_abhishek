provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "eu-north-1"
  region = "eu-north-1"
}

resource "aws_instance" "example1" {
  ami = "ami-080e1f13689e07408"
  instance_type = "t3.micro"
  provider = aws.us-east-1
}

resource "aws_instance" "example2" {
  ami = "ami-0989fb15ce71ba39e"
  instance_type = "t3.micro"
  provider = aws.eu-north-1
} 

output "public_ip_example1" {
    value = aws_instance.example1.public_ip
}


output "public_ip_example2" {
    value = aws_instance.example2.public_ip
}


