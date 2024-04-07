provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

terraform {
  backend "s3" {
    bucket         = "narsiterraform" // Replace with your S3 bucket name
    key            = "aws/terraform.tfstate" // Specify the path and filename for your state file
    region         = "us-east-1"
    access_key     = ""
    secret_key     = ""
  }
}

resource "aws_instance" "my_ec2" {
  count           = 1
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  monitoring      = true
  vpc_security_group_ids = var.vpc_security_group_ids
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
