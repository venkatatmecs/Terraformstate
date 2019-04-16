provider "aws"
{
profile = "venkat"
 #access_key = ""
#secret_key = ""
region = "us-east-1"
}
#backend setup
#terraform {
 #backend "s3" {
 #   bucket = "terraformstatefile12345"
 #   key    = "path/dev/terraformtfstatefile"
 #   region = "us-east-1"
 #   dynamodb_table = "terraformstatefile"
 # }
#}

resource "aws_s3_bucket" "b" {
  bucket = "venkat-s3-my-tf-test-bucket"
  acl    = "private"
  
tags = {
Name = "my bucket"
Environment = "Dev"
}
}
