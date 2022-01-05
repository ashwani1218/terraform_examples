provider "aws" {
  region     = "us-west-2"
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
}

locals {
  common_tags = {
    owner   = "Devops Team"
    service = "Backend"
  }
}

resource "aws_instance" "dev" {
  ami           = ""
  instance_type = "t2.micro"
  tags          = local.common_tags
}


resource "aws_instance" "prod" {
  ami           = ""
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_ebs_volume" "my_ebs" {
  availability_zone = "us-west-2a"
  size              = 8
  tags              = local.common_tags
}
