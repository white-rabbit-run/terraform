resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "af-south-1a"

  tags = merge({ Name = "Public Subnet" }, local.common_tags)
}