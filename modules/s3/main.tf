resource "aws_s3_bucket" "myterragruntbucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "myterragruntbucket" {
  bucket = aws_s3_bucket.myterragruntbucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

