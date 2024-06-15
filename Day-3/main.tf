provider "aws" {
  region = "eu-north-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0989fb15ce71ba39e"  # replace this
  instance_type_value = "t3.micro"
  subnet_id_value = "subnet-0eca56ba2c22fa19f" # replace this

}

output "public_ip" {
  value = module.ec2_instance.public-ip-address
}