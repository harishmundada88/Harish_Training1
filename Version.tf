terraform {
  required_providers {
    aws = {
source = "hashicorp/aws"
version = "4.47.0"
    }
    time = {
      source = "hashicorp/time"
      version = "0.9.1"
    }
  }
  backend "s3" {
    bucket = "harish-aws-test"
    key = "Harish_Terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "Harish-State-Lock-Table"
  }
}

provider "aws" {
  # Configuration options
  profile = "default"
  region = "us-east-1"
}