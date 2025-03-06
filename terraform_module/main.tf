terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
}
provider "aws" {
    region = var.region
  
}
module "ec2_instance" {
  source        = "github.com/santhosh0811/Terraform_source_code_Santhosh//terraform_module/ec2-creation"
  region        = var.region
  instance_type = var.instance_type
}