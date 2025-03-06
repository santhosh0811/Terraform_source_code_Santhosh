terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "ec2_creation" {
  source         = "github.com/your-github-username/ec2-creation.git"  # Reference GitHub module
  vpc_cidr_block = "10.0.0.0/16"
  ami_id         = "ami-12345678"
  instance_type  = "t2.micro"
}
