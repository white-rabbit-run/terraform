
variable "private_sg_ports" {
  type        = list(number)
  description = "List of Ports open to whitelisted IP's only"
}

variable "public_sg_ports" {
  type        = list(number)
  description = "List of Ports open to any IP"
}

variable "private_whitelist" {
  description = "List of ingress IPs to whitelist"
  type        = list(string)
}

variable "server_instance_name" {
  description = "Server Instance Name"
  type        = string
}

variable "owner_name" {
  description = "Name of the Author"
  type        = string
}

variable "service_name" {
  description = "Name of the service for traceability AWS"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}