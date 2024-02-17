terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }

  backend "s3" {
    bucket   = "roboshp-remote-state"
    key      = "foreach-demo"
    region   = "us-east-1"
    dynamodb_table = "roboshop-locking"
  }
}
  
provider "aws" {
  # Configuration options
  # you can give access ke and secret key here, but security problem
    region = "us-east-1"
}