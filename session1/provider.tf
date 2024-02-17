terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
}

provider "aws" {
  # Configuration options
  # you can give access ke and secret key here, but security problem
    region = "us-east-1"
}