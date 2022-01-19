provider "aws" {
  region     = "us-west-2"
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
}

resource "aws_instance" "myec2" {
  ami           = "<ami_id>"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

variable "instance_type" {
    type = "map"

    default = {
        default = "t2.nano"
        dev = "t2.micro"
        prd = "m2.large"
    }
    
}