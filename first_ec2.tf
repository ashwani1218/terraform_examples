provider "aws" {
  region     = "us-west-2"
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
}

resource "aws_instance" "myec2" {
  ami           = "<ami_id>"
  instance_type = "t2.micro"
}
