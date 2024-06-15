provider "aws" {
    region = "eu-north-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0989fb15ce71ba39e" # Ubuntu 22.04 LTS // eu-north-1
  instance_type = "t3.micro"
  subnet_id = "subnet-0eca56ba2c22fa19f"
  key_name = "devops_vinstkd"
  tags = {
    Name = "via_terraform"
  }
}

