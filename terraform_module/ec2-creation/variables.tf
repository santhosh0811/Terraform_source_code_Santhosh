variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
  default     = "16.0.0.0/16"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "workspace_cidrs" {
  description = "CIDR blocks for each workspace"
  type        = map(string)
  default = {
    dev   = "16.1.0.0/16"
    stage = "16.2.0.0/16"
    prod  = "16.3.0.0/16"
  }
}