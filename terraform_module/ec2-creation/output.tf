output "vpc_id" {
  value = aws_vpc.main.id
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}

output "ec2_public_ip" {
  value = aws_instance.web_server.public_ip
}
