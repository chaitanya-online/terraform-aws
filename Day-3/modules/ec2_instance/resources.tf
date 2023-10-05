resource "aws_instance" "terraform-instance" {
  ami = var.ami_value
  instance_type = var.instance_type_value

  tags = {
    Name =  var.instance_name
  }

}