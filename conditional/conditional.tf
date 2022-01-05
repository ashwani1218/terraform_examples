provider "aws" {
  region     = "us-west-2"
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
}

variable "isTest" {
  type        = bool
  description = "check if the env is dev or prod"
}


resource "aws_instance" "dev" {
  ami           = "<ami_id>"
  instance_type = "t2.micro"
  count         = var.isTest == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami           = "<ami_id>"
  instance_type = "t2.large"
  count         = var.isTest == false ? 1 : 0
}

