#Server Module Outputs
output "server_id" {
  description = "Id of the Server Instance"
  value       = aws_instance.server.id
}

output "public_subnet_id" {
  description = "Id of the Public Subnet"
  value       = aws_subnet.public_subnet.id
}

output "fortinet_sg_ingress_id" {
  description = "Id of the Ingress Security Group"
  value       = aws_security_group.sg_ingress.id
}

output "fortinet_sg_egress_id" {
  description = "Id of the Egress Security Group"
  value       = aws_security_group.sg_egress.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}

output "aws_instance_public_dns" {
  value = aws_instance.server.public_dns
}

