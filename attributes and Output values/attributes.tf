provider "aws" {
  region     = "us-east-1"
  access_key = "aws_access_key"
  secret_key = "aws_secret_access_key"
}

resource "aws_eip" "lb" {
  vpc = true
}

output "eip" {
  value = "aws_eip.lb.public_ip"
}


resource "aws_s3_bucket" "mys3" {
  bucket = "Demo S3 Bucket"
}

output "s3_bucket" {
  value = "aws_s3_bucket.mys3.bucket_domain_name"
}
