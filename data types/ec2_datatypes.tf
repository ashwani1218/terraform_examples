provider "aws" {
  region     = "us-west-2"
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
}

resource "aws_iam_user" "user" {
  name = var.usernumber
  path = "/system/"
}
