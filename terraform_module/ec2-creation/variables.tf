variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = "t2.micro"
}
