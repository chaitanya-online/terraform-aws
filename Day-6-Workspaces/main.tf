module "workspace" {
  source = "./modules"
  ami = "ami-0ff30663ed13c2290"
  instance_type = "t2.medium"
tag-instance_name = "stage"
}