provider "aws" {
  region = "us-west-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "${var.environment}-${var.region}"
  #acl    = "private"

  tags = {
    Environment = var.environment
  }
}

#resource "aws_s3_bucket_acl" "mybucket_acl" {
 # bucket = aws_s3_bucket.mybucket.id
  #acl    = "private"
#}

resource "aws_s3_bucket_versioning" "mybucket" {
  bucket = aws_s3_bucket.mybucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

