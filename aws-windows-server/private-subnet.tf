resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "172.16.20.0/24"
  availability_zone = "af-south-1a"

  tags = merge({ Name = "Private Subnet" }, local.common_tags)
}