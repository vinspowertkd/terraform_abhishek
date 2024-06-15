terraform {
  backend "s3" {
    bucket         = "demo-backend-vinstkd" # change this
    key            = "vins/terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}