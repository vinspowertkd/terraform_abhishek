provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "abhishek" {
  instance_type = "t3.micro"
  ami = "ami-0989fb15ce71ba39e" # change this
  subnet_id = "subnet-0eca56ba2c22fa19f" # change this
}

/*resource "aws_s3_bucket" "s3_bucket" {
  bucket = "demo-backend-vinstkd" # change this
 }


resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}*/

output "public_ip" {
  value = aws_instance.abhishek.public_ip
}

#output "arn" {
 # value = aws_s3_bucket.s3_bucket.arn
#}