provider "aws"
{
access_key = ""
secret_key = ""
region = "us-east-1"
}

terraform {
 backend "s3" {
    bucket = "terraformstatefile12345"
    key    = "path/dev/terraformtfstatefile"
    region = "us-east-1"
    dynamodb_table = "terraformstatefile"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "venkat-s3-my-tf-test-bucket"
  acl    = "private"
  
tags = {
Name = "my bucket"
Environment = "Dev"
}
}
