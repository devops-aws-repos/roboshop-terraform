terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.4.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket         = "devops-roboshop-remote"
    key            = "default"
    region         = "us-east-1"
    dynamodb_table = "devops-roboshop-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}