provider "aws" {
  region     = "us-west-2"
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "data_source_instance" {
  ami           = data.aws_ami.app_ami
  instance_type = "t2.micro"
}
