resource "aws_instance" "terraform-instance" {
  ami = var.ami_value
  instance_type = var.instance_type_value

  tags = {
    name= "terraform-instance"
  }

}

resource "aws_s3_bucket" "example" {
  bucket = "chaitanya-tf-backend-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}