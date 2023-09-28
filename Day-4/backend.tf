terraform {
  backend "s3" {
    bucket = "chaitanya-tf-backend-bucket"
    key    = "chay/terraform.tfstate"
    region = "ap-south-1"
  }
}