# Add HCL code for terraform cloud to be able to know your cloud provider 

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.23.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}