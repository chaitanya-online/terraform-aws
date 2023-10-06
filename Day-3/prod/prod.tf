provider "aws" {
    region = "ap-south-1"
  
}
module "ec2" {
   source = "../modules/ec2_instance"
   ami_value = "ami-0ff30663ed13c2290"
   instance_type_value = "t2.medium"
   instance_name = "prod"
}
  