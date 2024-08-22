terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.52.0"
    }
  }
  backend "s3" {
    bucket = "my-demo-1"
    key    = "expense-dev-app-alb"
    region = "us-east-1"
    dynamodb_table = "devops-0487s"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}