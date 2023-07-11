resource "aws_instance" "terraform-instance" {
    ami = "ami-012b9156f755804f5"
    instance_type = "t2.micro"
    key_name = "Kubernetes"
    
  tags = {
    Name = "work-station"
  }
}

resource "aws_ebs_volume" "volume" {
  availability_zone = "ap-south-1a"
  size              = 40

  tags = {
    Name = "work-station"
  }
}

resource "aws_volume_attachment" "ebsAttach" {

    device_name = "/dev/sdh"
    volume_id = aws_ebs_volume.volume.id
    instance_id = aws_instance.terraform-instance.id

}

output "Done" {

    value = "Finaly Done !!"
}
