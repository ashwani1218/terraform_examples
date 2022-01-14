
resource "aws_instance" "myec2" {
  ami           = "<ami_id>"
  instance_type = "t2.micro"


  # Installing and Running Nginx on Amazon linux 2 server
  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "root"
      private_key = file("<path>")
      host        = self.public_ip
    }
  }
}
