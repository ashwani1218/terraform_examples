variable "security_groups_ports" {
  type        = list(number)
  description = "List of ports"
  default     = [8200, 8201, 8300, 9200, 9500]
}

resource "aws_security_group" "dynamic_security_group" {
  name        = "dynamic sg"
  description = "Ingress rules "
  dynamic "ingress" {
    for_each = var.security_groups_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
