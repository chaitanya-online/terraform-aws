
# Define the AWS provider for the ap-south-1 region
provider "aws" {
  region = var.aws.region_name
}

variable "aws" {
    region_name = "ap-south-1"
    instance_type  = "t2.micro"
  
}

# Define the first AWS instance
resource "aws_instance" "terraform_instance_one" {
  ami           = "ami-012b9156f755804f5"
  instance_type = var.aws.instance_type
  key_name      = "Kubernetes"

  tags = {
    Name = "work-station-one"
  }
}

# Define the second AWS instance
resource "aws_instance" "terraform_instance_two" {
  ami           = "ami-012b9156f755804f5"
  instance_type =  var.aws.instance_type
  key_name      = "Kubernetes"

  tags = {
    Name = "work-station-two"
  }
}

output "instance_publicip" {
  value = "Your public ip is "+aws_instance.terraform_instance_two.public_ip
}

