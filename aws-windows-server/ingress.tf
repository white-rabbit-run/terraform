resource "aws_security_group" "sg_ingress" {
  name   = "VPC Ingress"
  vpc_id = aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = var.private_sg_ports

    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = var.private_whitelist
    }
  }

  dynamic "ingress" {
    for_each = var.public_sg_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}