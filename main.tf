#Terraform Code


terraform {
  backend "s3"
  bucket = "engineering-remote-state-development"
  key    = "terraform.tfstate"
  region = "us-east-1"
}





module "remote_state" {
  source = "github.com/jknott-terraform/aws-remote-state-vpc"
  prefix = var.prefix
  environment = var.environment
}


module "vpc_basic" {
  source        = "github.com/jknott-terraform/aws-base-vpc"
  name          = "base-vpc-terraform"
  cidr          = "10.0.0.0/16"
  public_subnet = "10.0.1.0/24"
}



