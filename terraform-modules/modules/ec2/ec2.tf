
resource "aws_instance" "myec2" {
  ami           = "<ami_id>"
  instance_type = var.instance_type
}
