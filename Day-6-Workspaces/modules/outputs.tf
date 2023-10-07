output "public_ip" {
    value = aws_instance.ec2_instance.public_ip
  
}

output "instance_type" {
  value = aws_instance.ec2_instance.instance_type
}

output "instance_state" {
  value = aws_instance.ec2_instance.instance_state
}