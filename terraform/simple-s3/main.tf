terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">4.0.0"
    }
  }
}

#test
provider "aws" {
  region = var.region
}

# nothing bad
resource "aws_s3_bucket" "bucket" {
  bucket = var.name
  tags = {
    Environment = "Test"
  }
}

resource "aws_s3_bucket" "bucket1" {
  bucket = var.name
  tags = {
    Environment = "Test1"
  }
}

