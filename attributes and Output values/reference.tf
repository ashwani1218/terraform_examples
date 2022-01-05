provider "aws" {
  region     = "us-west-2"
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
}

resource "aws_instance" "myec2" {
  ami           = "<ami_id>"
  instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc = true
}

resource "aws_eip_association" "eip_association" {
  instance_id   = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id
}

resource "aws_security_group" "allow_tls" {
  name = "my_security_group"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
  }
}
