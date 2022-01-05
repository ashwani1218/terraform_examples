provider "aws" {
  region     = "us-west-2"
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
}

resource "aws_instance" "dev" {
  ami           = "<ami_id>"
  instance_type = "t2.micro"
}

resource "aws_instance" "prod" {
  ami           = "<ami_id>"
  instance_type = "t2.large"
}

