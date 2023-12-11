resource "aws_instance" "server" {
  ami           = "ami-07c3e5e0acc08b293"
  instance_type = "t3.medium"
  key_name      = "KrogBORAD"

  subnet_id                   = aws_subnet.fortinet_public_subnet.id
  vpc_security_group_ids      = [aws_security_group.fortinet_sg_ingress.id, aws_security_group.fortinet_sg_egress.id]
  associate_public_ip_address = true

  tags = merge({ Name = "Windows Server 2019" }, local.common_tags)
}